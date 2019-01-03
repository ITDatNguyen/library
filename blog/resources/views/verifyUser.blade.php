@extends('layouts.master')

@section('title')
    Verify
@endsection

@section('content')
    <h1>Just To Be Safe...</h1>
    <p>
        Your account has been created, but we need to make sure you're a human
        in control of the phone number you gave us. Can you please enter the
        verification code we just sent to your phone?
    </p>
    <form action="{{route('user-verify')}}" method="POST" >
        {!! csrf_field() !!}
        <div class="form-group">
            <input type="text" class="form-control" name="token" id="">
        </div>
        <button type="submit" class="btn btn-primary">Verify Token</button>
    </form>
    {{-- <hr>
    {!! Form::open(['url' => route('user-verify-resend')]) !!}
        <button type="submit" class="btn">Resend code</button>
    {!! Form::close() !!} --}}
    {{-- </form> --}}
@endsection
