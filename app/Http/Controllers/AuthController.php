<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthController extends Controller
{
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1315502165.
    public function login()
    {
        return view('auth.login');
    }
}
