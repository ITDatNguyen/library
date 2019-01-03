@extends('layouts.master')

@section('title')
    Sign Up
@endsection

@section('content')
    <div class="container">
      <h1>We're going to be *BEST* friends</h1>
      <p> Thanks for your interest in signing up! Can you tell us a bit about yourself?</p>
        <form action="{{route('user-create')}}" method="POST">
                {!! csrf_field() !!}
          <div class="form-group">
              <input type="text"  class="form-control" name="name" id="">
          </div>
          <div class="form-group">
              <input type="text" class="form-control" name="email" id="">
          </div>
          <div class="form-group">
              <input type="password" class="form-control" name="password" id="">
          </div>
          <div class="form-group">
              <input type="text" class="form-control" name="country_code" id="authy-countries">
          </div>
          <div class="form-group">
              <input type="text"  class="form-control" name="phone_number" id="authy-cellphone">
          </div>
          <div class="form-group">
              <button type="submit" class="btn btn-primary">Sign up</button>
          </div>
        </form>
    </div>
@endsection
