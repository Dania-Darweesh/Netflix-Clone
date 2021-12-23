<?php

namespace App\Http\Controllers\BackEnd\Movies;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Movies;

class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        /* $movies = Movies::all(); */
        $movies = Movies::where('movie_tag', 'popular')->get();
        $movies2 = Movies::where('movie_tag', 'trending')->get();
        $movies3 = Movies::where('movie_tag', 'tv show')->get();
        $movies4 = Movies::where('movie_tag', 'action')->get();
        $movies5 = Movies::where('movie_tag', 'action')->get();
        return view('Backend.index', compact('movies', 'movies2', 'movies3', 'movies4', 'movies5'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        return view('Backend.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->all()); // just to check data
        if ($request->hasFile('movie_image')) {
            $file = $request->movie_image;
            $new_file = time() . $file->getClientOriginalName();
            $file->move('uploads', $new_file);
        }
        Movies::create([      //Movies :the name of the model 
            "movie_name"  => $request->movie_name,
            "movie_desc"  => $request->movie_desc,
            "movie_gener" => $request->movie_gener,
            "movie_tag"   => $request->movie_tag,
            "movie_image" => 'uploads/' . $new_file,

        ]);

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $movieEdit = Movies::find($id);
        return view('Backend.edit', compact('movieEdit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $movieEdit = Movies::find($id);
        if ($request->hasFile('movie_image')) {
            $file = $request->movie_image;
            $new_file = time() . $file->getClientOriginalName();
            $file->move('uploads', $new_file);
            //photo
            $movieEdit->movie_image = 'uploads/' . $new_file;
        }

        $movieEdit->movie_name = $request->movie_name;
        $movieEdit->movie_desc = $request->movie_desc;
        $movieEdit->movie_gener = $request->movie_gener;
        $movieEdit->movie_tag = $request->movie_tag;
        // call update func
        $movieEdit->update();
        return redirect('admin/manage_movies');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     * 
     */
    public function manage_movies()
    {
        //
        $manage = Movies::all();
        return view('Backend.manage_movies', compact('manage'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function destroy($id)
    {
        //
        $movieDestroy = Movies::find($id);
        $movieDestroy->destroy($id);
        return redirect('admin/manage_movies');
    }
}
