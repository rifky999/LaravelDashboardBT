<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Http\Requests;
use App\Transformer\UserTransformer;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function users(User $user)
    {
        $users = $user->all();

       return fractal()
                ->collection($users)
                ->transformWith(new UserTransformer)
                ->toArray();
    }
    public function profile(User $user)
    {
        $users = $user->find(Auth::user()->id);
        return fractal()
                    ->item($users)
                    ->transformWith(new UserTransformer)
                    ->toArray();
    }
}
