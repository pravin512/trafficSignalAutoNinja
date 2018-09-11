@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header alert-danger">Vehicle Crossing Details</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="flex-center position-ref full-height"> 
                        <div class="content"> 
                                <form action="{{url('/')}}" method="POST">
                                {{ csrf_field() }}
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                            <label for="apprentice-type" class="col-md-12 control-label">Choose Date</label>
                                                <div class="col-md-12">
                                                <!-- {{Form::date('date', old('date'), ['class'=> 'form-control'])}} -->
                                                    <input type="date" name="date" class="form-control" value="old('date')">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                            <label for="apprentice-type" class="col-md-12 control-label">Signal</label>
                                                <div class="col-md-12">

                                                    {{ Form::select('signal',
                                                            $signals,
                                                            old('signal'), 
                                                            [
                                                                'placeholder' => 'Select Signal',
                                                                'class' => $errors->has('signal') ? 'form-control is-invalid' : 'form-control',
                                                            ]
                                                    ) }} 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                            <label for="apprentice-type" class="col-md-12 control-label">Choose Speed(kmph)(x and above)</label>
                                                <div class="col-md-12">
                                                {{ Form::number('speed', 
                                                        old('speed'), 
                                                        [
                                                            'id' => 'speed',
                                                            'class' => $errors->has('speed') ? 'form-control is-invalid' : 'form-control',
                                                            'autofocus' => true,
                                                        ]
                                                ) }} 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <input type="submit" value="Search" class="btn btn-success form-control pull-right">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            <div class="row">
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"></h3>
                                        </div>
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Signal</th>
                                                    <th scope="col">Speed(KMPH)</th>
                                                    <th scope="col">Date & Time</th>
                                                    <th scope="col">From Lane</th>
                                                    <th scope="col">To Lane</th>
                                                    <th scope="col">Vehicle Type</th>
                                                    <th scope="col">Model No.</th>
                                                    <th scope="col">Registration No.</th>
                                                    <th scope="col">Date Time</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                @foreach($crossings as $key=>$cross)
                                                    <tr>
                                                        <th scope="row">{{$key}}</th>
                                                        <td>{{$cross->signal->name}}</td>
                                                        <td>{{$cross->speed_kmph}}</td>
                                                        <td>{{$cross->date_time}}</td>
                                                        <td>{{$cross->fromLanes->name}}</td>
                                                        <td>{{$cross->toLanes->name}}</td>
                                                        <td>{{$cross->vehicle->type}}</td>
                                                        <td>{{$cross->vehicle->model}}</td>
                                                        <td><a href="{{url('/detail/'.$cross->vehicle->id)}}">{{$cross->vehicle->registration_no}}</a></td>
                                                        <td>{{$cross->created_at}}</td>
                                                    </tr>
                                                @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div> 
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script type="text/javascript">
        $(function () {
            $('#datetimepicker2').datetimepicker({
                locale: 'ru'
            });
        });
</script>
@endsection
