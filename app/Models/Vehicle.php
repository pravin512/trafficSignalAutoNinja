<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    

    public function crossings()
    {
        return $this->hasMany('App\Models\Crossing');
    }
}
