<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Model\User;
use Hash;

class LoginController extends Controller
{
    
    public function check(Request $request)
    {
        
        $credentials = $request->validate([
        'email' => ['required', 'email'],
        'password' => ['required'],
        ]);


        if (Auth :: attempt($credentials))
        {
            return response()->json([ 
                'status' => true ,
                'message' => "Success", 
                'role' => Auth::user()->role,
            ]);
        }
    }   
}
