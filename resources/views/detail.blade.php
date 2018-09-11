@php 
use App\Models\Crossing;
@endphp

@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header alert-success">Vehicle {{$vehicle->registration_no}}</div>

                <div class="card-body alert-warning">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <dl class="row">
                        <dt class="col-md-2">Type</dt>
                        <dd class="col-md-4">{{$vehicle->type}}</dd>

                        <dt class="col-md-2">Model No.</dt>
                        <dd class="col-md-4">{{$vehicle->model}}</dd>

                        <dt class="col-md-2">State</dt>
                        <dd class="col-md-4">{{Crossing::$locations[substr($vehicle->registration_no, 0, 4)]['state']}}</dd>

                        <dt class="col-md-2">City</dt>
                        <dd class="col-md-4">{{Crossing::$locations[substr($vehicle->registration_no, 0, 4)]['city']}}</dd>

                        <dt class="col-md-2">Type</dt>
                        <dd class="col-md-4">{{$vehicle->type}}</dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="col-md-12"><br><br>
            <a href="{{url('/')}}" class=" form-control btn btn-primary">Go Back</a>
        </div>
    </div>
</div>
@endsection
