<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Signal extends Model
{  

    public function crossings()
    {
        return $this->hasMany('App\Models\Crossing');
    }

    public function lanes()
    {
        return $this->hasMany('App\Models\Lane');
    }
}
