<html>
<head>
    <title>Mobile Number verification in Laravel</title>
    <link rel="stylesheet" href="{{ asset('/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/font-awesome.min.css') }}">    
    <link rel="stylesheet" href="{{ asset('/css/style.css') }}">    
</head>
<body ng-app="home" ng-controller="index" class="container">

	<div class="row">
        <div class="header">
            <div class="col-md-4">
                Hello {{ $users['name'] }}
            </div>
            <div class="col-md-8">
                <ul class="navigator">
                    <li>
                        <a href="{{ url('/home') }}" title="Home">
                            <i class="fa fa-home" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a href="{{ url('/logout') }}" title="Logout">
                            <i class="fa fa-sign-out" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="userInfo row">
    	
    	<div class="information">
			<h3>Your mobile number ******{{ $users['mobile'] }} is 
				<span id="isVerified">
					@if ( $users['isVerified'] === 0) not Verified. @else Verified. @endif
				</span>
			</h3>
		</div>

		<div id="otpSection" class="otpSection">

			<input type="hidden" name="_token" id="_token" ng-model="_token" value="{{ csrf_token() }}">

			<div id="sendOtpSection" class="sendOtpSection" 
				style="display:@if ( $users['isVerified'] === 0) block @else none @endif" >
				<button class="btn btn-primary sendOtp" id="sendOtp" ng-click="sendOTP({{$users['id']}})">Send OTP</button>
			</div>

			<div id="verifyOtpSection" class="verifyOtpSection" style="display:none">
				<input type="number" class="form-control" id="otp" placeholder="Enter OTP" ng-model="enteredOtp">
				<br/>
				<button class="btn btn-primary verifyOtp" id="verifyOtp" ng-click="verifyOTP()">Verify OTP</button>
			</div>
		</div>



    </div>
    <script type="text/javascript">
        'use strict';
        const BASE_URL = '{!! url().'/' !!}';
    </script>

    <script src = "{{ asset('/js/angular.min.js') }}"></script>
    <script src = "{{ asset('/js/home.js') }}"></script>
</body>
</html>