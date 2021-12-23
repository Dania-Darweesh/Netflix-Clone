@extends('BackEnd.Layouts.main')

@section('content')

<div class="row">
    <div class="col-11 m-auto m m3">
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th scope="col"> ID</th>
                    <th scope="col">Movie Name</th>
                    <th scope="col">Movie Description</th>
                    <th scope="col">Movie Image</th>
                    <th scope="col">Gener</th>
                    <th scope="col">Tag</th>
                    <th scope="col">Created_At</th>
                    <th scope="col">Updated_At</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                @foreach($manage as $man)
                <tr>
                    <th scope="row">{{$man->id}}</th>
                    <td>{{$man->movie_name}}</td>
                    <td>{{$man->movie_desc}}</td>
                    <td>{{$man->movie_image}}</td>
                    <td>{{$man->movie_gener}}</td>
                    <td>{{$man->movie_tag}}</td>
                    <td>{{$man->created_at}}</td>
                    <td>{{$man->updated_at}}</td>
                    <td title="Edit"><a href="{{route('movies.edit',['id'=>$man->id])}}" role="button"><i class="fas fa-edit"></i></a></td>
                    <td title="Delete"><a href="{{route('movies.destroy',['id'=>$man->id])}}" role="button"><i class="fas fa-trash-alt"></i> </a></td>


                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection