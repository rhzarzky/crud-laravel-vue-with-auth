<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        // Validasi input
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        // Simpan pengguna baru
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password), // Gunakan Hash untuk menyimpan kata sandi
        ]);

        if ($user) {
            return response()->json([
                'success' => true,
                'message' => 'Registrasi berhasil',
                'data' => $user
            ], 201);
        }

        return response()->json([
            'success' => false,
            'message' => 'Registrasi gagal',
        ], 409);
    }

    public function login(Request $request)
    {
        // Validasi input
        $request->validate([
            'name' => 'required',
            'password' => 'required',
        ]);

        // Proses login
        if (auth()->attempt([
            'name' => $request->name, 
            'password' => $request->password,
        ])) {
            // Login berhasil
            $user = auth()->user();
            return response()->json([
                'success' => true,
                'message' => 'Login berhasil',
                'data' => $user
            ]);
        } else {
            // Login gagal
            return response()->json([
                'success' => false,
                'message' => 'Nama pengguna atau kata sandi salah',
            ], 401);
        }
    }
}