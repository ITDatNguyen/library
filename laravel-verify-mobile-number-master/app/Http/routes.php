<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/', [
	'uses'=>'userController@index'
	]);

Route::post('/login', [
	'uses'=>'userController@userLogin'
	]);

Route::get('/home', [
	'uses'=>'userController@home'
	]);

Route::post('/sendOtp', [
	'middleware' => 'checkSession',
    'uses'=>'userController@sendOtp'
]);

Route::post('/verifyOtp', [
	'middleware' => 'checkSession',
	'uses'=>'userController@verifyOtp'
]);

Route::get('/logout', [
	'uses'=>'userController@logout'
	]);
