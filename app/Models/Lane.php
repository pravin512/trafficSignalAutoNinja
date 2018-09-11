<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lane extends Model
{
    public function signal()
    {
        return $this->belongsTo('App\Models\Signal');
    }
}
