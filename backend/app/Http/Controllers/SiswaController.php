<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SiswaController extends Controller
{
    // index
    public function index()
    {
        $perPage = 15; // Sesuaikan dengan jumlah data yang ingin ditampilkan per halaman
        $siswas = Siswa::orderBy('nama', 'asc')->paginate($perPage);
    
        return response()->json([
            'data' => $siswas,
            'meta' => [
                'last_page' => ceil(Siswa::count() / $perPage),
            ],
        ]);
        // $siswas = Siswa::orderBy('nama', 'asc')->paginate(15);
        // return response()->json(['data' => $siswas]);

        // // get data from table siswas
        // $siswas = Siswa::orderBy('nama', 'asc')->get();

        // // make response JSON

        // return response()->json([
        //     'data' => $siswas,
        //     'meta' => [
        //     'last_page' => $siswas->lastPage(),
        //     ],
        // ]);
    }

    // show
    public function show($id)
    {
        // find siswa by ID
        $siswa = Siswa::findOrFail($id);

        // make response JSON
        return response()->json([
            'success' => true,
            'message' => 'Detail Data Siswa',
            'data' => $siswa
        ], 200);
    }

    // TAMBAH DATA
    public function store(Request $request)
    {
        // set validation
        $validator = Validator::make($request->all(), [
            'nama' => 'required',
            'alamat' => 'required',
            'kota' => 'required',
            'provinsi' => 'required',
            'email' => 'required',
        ]);

        // response error validation
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // save to database
        $siswa = Siswa::create([
            'nama' => $request->nama,
            'alamat' => $request->alamat,
            'kota' => $request->kota,
            'provinsi' => $request->provinsi,
            'email' => $request->email
        ]);

        // success save to database
        if ($siswa) {
            return response()->json([
                'success' => true,
                'message' => 'Input berhasil',
                'data' => $siswa
            ], 201);
        }

        // failed save to database
        return response()->json([
            'success' => false,
            'message' => 'Input gagal',
        ], 409);
    }

    // UPDATE DATA
    public function update(Request $request, Siswa $siswa)
    {
        // set validation
        $validator = Validator::make($request->all(), [
            'nama' => 'required',
            'alamat' => 'required',
            'kota' => 'required',
            'provinsi' => 'required',
            'email' => 'required',
        ]);

        // response error validation
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // find siswa by ID
        $siswa = Siswa::findOrFail($siswa->id);

        if ($siswa) {
            // update siswa
            $siswa->update([
                'nama' => $request->nama,
                'alamat' => $request->alamat,
                'kota' => $request->kota,
                'provinsi' => $request->provinsi,
                'email' => $request->email
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Data siswa berhasil diupdate',
                'data' => $siswa
            ], 200);
        }

        // data siswa not found
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }

    // HAPUS DATA
    public function destroy($id)
    {
        // find siswa by ID
        $siswa = Siswa::findOrFail($id);

        if ($siswa) {
            // delete siswa
            $siswa->delete();

            return response()->json([
                'success' => true,
                'message' => 'Data siswa berhasil dihapus',
            ], 200);
        }

        // data siswa not found
        return response()->json([
            'success' => false,
            'message' => 'Data tidak ditemukan',
        ], 404);
    }
}