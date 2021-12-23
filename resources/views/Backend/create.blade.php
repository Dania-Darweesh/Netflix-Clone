@extends('Backend.Layouts.main')

@section('content')



<div class="row">
    <div class="col-4 m-auto m">
        <form action="{{route('movies.store')}}" method="Post" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Movie Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="movie_name" aria-describedby="emailHelp">

            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Movie Description</label>
                <input type="text" class="form-control" name="movie_desc" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Movie Generation</label>
                <input type="text" class="form-control" name="movie_gener" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Movie Tag</label>
                <input type="text" class="form-control" name="movie_tag" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="formFile" class="form-label">Movie Image</label>
                <input class="form-control" type="file" name="movie_image" id="formFile">
            </div>

            <button type="submit" class="btn btn-primary btnSubmit">Submit</button>
        </form>
    </div>
</div>

@endsection