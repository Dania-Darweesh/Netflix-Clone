<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BackEnd\Movies\MovieController;


Route::namespace('Movies')->group(function () {
});

Route::group(['prefix' => 'admin', 'namespace' => 'Movies'], function () {
    Route::get('/index', [MovieController::class, 'index'])->name('movies.index');
    Route::get('/create', [MovieController::class, 'create'])->name('movies.create');
    Route::post('/store', [MovieController::class, 'store'])->name('movies.store');
    Route::get('/manage_movies', [MovieController::class, 'manage_movies'])->name('movies.manage_movies');
    Route::get('/edit/{id}', [MovieController::class, 'edit'])->name('movies.edit');
    Route::post('/update/{id}', [MovieController::class, 'update'])->name('movies.update');
    Route::get('/destroy/{id}', [MovieController::class, 'destroy'])->name('movies.destroy');
});
