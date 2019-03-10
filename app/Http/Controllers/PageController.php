<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {   
        $insert = DB::table('user')->insert(['username' => 'agus','password' => '12321']);
        $users = DB::table('user')->get();
        return view('home', ['users' => $users]);
    }
}
