<?php
 header("Access-Control-Allow-Origin: *");
 header('Access-Control-Allow-Headers: Content-Type, x-xsrf-token, X-Authorization');
 header("Access-Control-Allow-Methods: POST, GET, DELETE, PUT, OPTIONS");
 
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

Route::get('/', function () {
    return view('welcome');
});

Route::auth();
//Route::resource('book', 'BookController');
Route::get('/home', 'HomeController@index');
Route::group(['prefix' => 'api/v1'], function()
{
    Route::get('/books', 'BooksController@all');
    Route::get('/books/{id}', 'BooksController@show');
    Route::post('/store', 'BooksController@store');
    //Route::post('/add', 'HeroesController@add');
    Route::resource('hero', 'HeroesController');
    Route::post('for_check', 'HeroesController@for_check');
    Route::get('search/{search_term}', 'HeroesController@search');
    Route::resource('list', 'ListsController');
    Route::post('do_login','HeroesController@do_login');
    Route::post('do_register','HeroesController@do_register');
});



