<html>
<head>
    <title>Mobile Number verification in Laravel</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">    
    <link rel="stylesheet" href="css/style.css">    
</head>
<body ng-app="Login" ng-controller="LoginController" class="loginContainer">

    <div class="container">

        <div class="row">
            <h2>Login</h2>
            <label >Username:</label>
            <input type="text" class="form-control" ng-model="email" name="email" placeholder="Enter your email">
            <br/>
            <label >Password:</label>
            <input type="password" class="form-control" ng-model="password" name="password" placeholder="Enter your password">
            <br/>
            <button class="btn " ng-click="login()">Login</button>

        </div>     
    </div>

    <script type="text/javascript">
        'use strict';
        const BASE_URL = '{!! url().'/' !!}';
    </script>
    <script src = "{{ asset('/js/angular.min.js') }}"></script>
    <script src = "{{ asset('/js/script.js') }}"></script>
</body>
</html>