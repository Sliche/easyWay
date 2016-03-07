<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class PagesController extends Controller
{
    //
    public function index() {

//        dd('Bora Car');
        return view ('welcome');

    }

    public function signup() {


        return view ('pages/signup');


    }

    public function bar() {

        return view ('bar');
    }

    public function login() {




        return view ('pages/login');

    }





}
