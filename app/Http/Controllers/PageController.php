<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {
        $users = DB::table('user')->get();
        return view('home', ['users' => $users]);
    }
}
