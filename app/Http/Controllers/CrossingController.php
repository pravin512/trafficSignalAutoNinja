<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\{Crossing, Signal, Vehicle};

use Illuminate\Http\Request;

class CrossingController extends Controller
{


    public function index(Request $request)
    {               
        $crossings = Crossing::query();

        if($request['date'] != null)
        {
            $crossings->whereDate('created_at', $request['date']);
        }

        if($request['signal'] != null)
        {
            $crossings->where('signal_id', $request['signal']);
        }

        if($request['speed'] != null)
        {
            $crossings->where('speed_kmph', '>=', $request['speed']);
        }

        $crossings =  $crossings->get();

        $signals = Signal::pluck('name', 'id');
        return view('home', compact('crossings', 'signals'));
    }


    public function vehicleDetail(Vehicle $vehicle)
    {  
        return view('detail', compact('vehicle'));
    }

}
