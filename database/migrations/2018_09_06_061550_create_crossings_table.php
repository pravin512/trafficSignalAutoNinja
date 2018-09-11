<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCrossingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crossings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('signal_id');
            $table->string('vehicle_id');
            $table->float('speed_kmph', 5, 2);
            $table->timestamp('date_time');
            $table->string('from_lane_id');
            $table->string('to_lane_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('crossings');
    }
}
