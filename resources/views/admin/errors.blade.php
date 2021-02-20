@if ($errors->any())
<div class="row">
    <div class="col-md-8">
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{$error}}</li>
                @endforeach
            </ul>
        </div>
    </div>
</div> 
@endif

@if (session('success'))
    <div class="row">
        <div class="col-md-8">
            <div class="alert alert-success">{{session('success')}}</div>
        </div>
    </div>   
@endif

@if (session('status'))
    <div class="alert alert-danger">{{session('status')}}</div>
@endif