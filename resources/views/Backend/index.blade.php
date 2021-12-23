@extends('BackEnd.Layouts.main')

@section('content')



<!-- MAIN CONTAINER -->
<section class="main-container">
    <div class="location" id="home">
        <h1 id="home">Popular on Netflix</h1>
        <div class="box">

            @foreach($movies as $movie)
            <a href=""> <img src="{{asset($movie->movie_image)}}" class="card-img-top" alt="{{$movie->movie_name}}"></a>
            @endforeach
        </div>
    </div>


    <h1 id="myList">Trending Now</h1>
    <div class="box">
        @foreach($movies2 as $movie2)
        <a href=""> <img src="{{asset($movie2->movie_image)}}" class="card-img-top" alt="{{$movie2->movie_name}}"></a>
        @endforeach
    </div>


    <h1 id="tvShows">TV Shows</h1>
    <div class="box">
        @foreach($movies3 as $movie3)
        <a href=""> <img src="{{asset($movie3->movie_image)}}" class="card-img-top" alt="{{$movie3->movie_name}}"></a>
        @endforeach
    </div>


    <h1 id="movies">Blockbuster Action & Adventure</h1>
    <div class="box">
        @foreach($movies4 as $movie4)
        <a href=""> <img src="{{asset($movie4->movie_image)}}" class="card-img-top" alt="{{$movie4->movie_name}}"></a>
        @endforeach
    </div>

    <h1 id="originals">Netflix Originals</h1>
    <div class="box">
        @foreach($movies5 as $movie5)
        <a href=""> <img src="{{asset($movie5->movie_image)}}" class="card-img-top" alt="{{$movie5->movie_name}}"></a>
        @endforeach
    </div>
    @endsection
    <!-- END OF MAIN CONTAINER -->

    <!-- LINKS -->