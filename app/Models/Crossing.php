<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Crossing extends Model
{
  
    protected $fillable = [
        'signal_id',
        'vehicle_id',
        'speed_kmph',
        'date_time',
        'from_lane_id',
        'to_lane_id',
    ];

    public static $locations = [
        'KA01' => ['state'=>'Karnataka', 'city'=>'Bangalore'],
        'KA19' => ['state'=>'Karnataka', 'city'=>'Udupi'],
        'KA20' => ['state'=>'Karnataka', 'city'=>'Mangalore'],
        'KA18' => ['state'=>'Karnataka', 'city'=>'Dharwad'],
        'KA17' => ['state'=>'Karnataka', 'city'=>'Shimoga'],
        'KA16' => ['state'=>'Karnataka', 'city'=>'Belgaum'],
        'KA15' => ['state'=>'Karnataka', 'city'=>'Kolar'],
        'CG01' => ['state'=>'Chhattisgarh', 'city'=>'Raipur'],
        'CG19' => ['state'=>'Chhattisgarh', 'city'=>'Durg'],
        'CG20' => ['state'=>'Chhattisgarh', 'city'=>'Bhilai'],
        'CG18' => ['state'=>'Chhattisgarh', 'city'=>'Bilaspur'],
        'CG17' => ['state'=>'Chhattisgarh', 'city'=>'Kawardha'],
        'CG16' => ['state'=>'Chhattisgarh', 'city'=>'Rajnandgaon'],
        'CG15' => ['state'=>'Chhattisgarh', 'city'=>'Bemetara'],
        'MH01' => ['state'=>'Maharastra', 'city'=>'Mumbai'],
        'MH19' => ['state'=>'Maharastra', 'city'=>'Pune'],
        'MH20' => ['state'=>'Maharastra', 'city'=>'Kolhapur'],
        'MH18' => ['state'=>'Maharastra', 'city'=>'Nasik'],
        'MH17' => ['state'=>'Maharastra', 'city'=>'Nagpur'],
        'MH16' => ['state'=>'Maharastra', 'city'=>'Thane'],
        'MH15' => ['state'=>'Maharastra', 'city'=>'Wardha'],
        'UP01' => ['state'=>'Uttarpradesh', 'city'=>'Allahabad'],
        'UP19' => ['state'=>'Uttarpradesh', 'city'=>'Amethi'],
        'UP20' => ['state'=>'Uttarpradesh', 'city'=>'Merath'],
        'UP18' => ['state'=>'Uttarpradesh', 'city'=>'Ghaziabad'],
        'UP17' => ['state'=>'Uttarpradesh', 'city'=>'Gorakhpur'],
        'UP16' => ['state'=>'Uttarpradesh', 'city'=>'Gonda'],
        'UP15' => ['state'=>'Uttarpradesh', 'city'=>'Ballia'],
        
    ];


    public function signal()    
    {
        return $this->belongsTo('App\Models\Signal');
    }

    public function vehicle()
    {            
        return $this->belongsTo('App\Models\Vehicle');
    }

    public function fromLanes()
    {            
        return $this->belongsTo('App\Models\Lane', 'from_lane_id', 'id');
    }

    public function toLanes()
    {            
        return $this->belongsTo('App\Models\Lane', 'to_lane_id', 'id');
    }


}
