<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Transformer\UserTransformer;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(Request $request, User $user)
    {
        $this->validate($request,[
            'name'      => 'required',
            'email'     => 'required|email|unique:users',
            'password'  => 'required|min:6'
        ]);
        
    $cek =  $user->create([
            'name'      => $request->name,
            'password'  => bcrypt($request->password),
            'email'     => $request->email,
            'api_token' => bcrypt($request->email)
        ]);
    $response =  fractal()
            ->item($cek)
            ->transformWith(new UserTransformer)
            ->addMeta([
                'token' => $cek->api_token
            ])
            ->toArray();
    
            return response()->json($response, 201);
    
    }

    public function login(Request $request, User $user)
    {
        $credentials = $request->only('email','password');

        if (!Auth::attempt($credentials)) {
            return response()->json(['error' => 'Email and Password no Match'],401);
        }

        $user = $user->find(Auth::user()->id);

        return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->addMeta([
                    'token' => $user->api_token
                ])
                ->toArray();
    }
}
