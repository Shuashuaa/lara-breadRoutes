<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class SpaController extends Controller
{
    public function index(){
        return view('layouts.app');
    }

    public function sampleParam($param){
        // return "$param";
        return DB::table('types')
        ->leftJoin('transactions', 'types.kind', '=', 'transactions.transaction')
        ->where('transactions.transaction', $param)
        ->get();
        //from here you'll get "$param" value depends on what you selected
        //then use that "$param" value to request data from your db
        //ex. ->Where('db column', $param)

        //same as
        //SELECT types.* FROM types 
        // LEFT JOIN ( SELECT transactions.transaction FROM transactions ) 
        // AS transactions 
        // ON types.kind = transactions.transaction 
        // WHERE transactions.transaction = 'dog'; 
    }

    public function sampleParam1($param, $param1){
        // return $param . '/' . $param1;
        return DB::table('types')
        ->leftJoin('transactions', 'types.kind', '=', 'transactions.transaction')
        ->where('types.breed', $param1)
        ->get();
    }
}
