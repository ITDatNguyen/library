<?php
/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/
Route::group(['middleware' => ['web']], function () {
	// Authentication Routes
	// Route::get('auth/login', ['as' => 'login', 'uses' => 'Auth\LoginController@login']);
	// Route::post('auth/login', 'Auth\LoginController@dangxuat');
	 Route::get('auth/logout', ['as' => 'setlogout', 'uses' => 'Auth\LoginController@logout']);
	// // Registration Routes
	// Route::get('auth/register', 'Auth\RegisterController@getRegister');
	// Route::post('auth/register', 'Auth\RegisterController@postRegister');
	// // Password Reset Routes
	// Route::get('password/reset/{token?}', 'Auth\ResetPasswordController@showResetForm');
	// Route::post('password/email', 'Auth\ResetPasswordController@sendResetLinkEmail');
	// Route::post('password/reset', 'Auth\ResetPasswordController@reset');
	// // Categories
	Route::resource('categories', 'CategoryController', ['except' => ['create']]);
	Route::resource('tags', 'TagController', ['except' => ['create']]);
	Auth::routes();
	// Comments
	Route::post('comments/{post_id}', ['uses' => 'CommentsController@store', 'as' => 'comments.store']);
	Route::get('comments/{id}/edit', ['uses' => 'CommentsController@edit', 'as' => 'comments.edit']);
	Route::put('comments/{id}', ['uses' => 'CommentsController@update', 'as' => 'comments.update']);
	Route::delete('comments/{id}', ['uses' => 'CommentsController@destroy', 'as' => 'comments.destroy']);
	Route::get('comments/{id}/delete', ['uses' => 'CommentsController@delete', 'as' => 'comments.delete']);
	Route::get('blog/{slug}', ['as' => 'blog.single', 'uses' => 'BlogController@getSingle'])->where('slug', '[\w\d\-\_]+');
	Route::get('blog', ['uses' => 'BlogController@getIndex', 'as' => 'blog.index']);
    Route::get('contact', 'PagesController@getContact');
    Route::post('contact', 'PagesController@postContact');
	Route::get('about', 'PagesController@getAbout');
	Route::get('/', 'PagesController@getIndex');
	Route::resource('posts', 'PostController');
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
