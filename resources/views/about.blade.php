@extends('layout.main')

@section('container')
<div class="row text-center justify-content-center">
    <h1>Halaman About</h1>
    <h3>{{$nama}}</h3>
    <img src="{{$gambar}}" class="aboutgambar" alt="">
    <h3>{{$kelas}}</h3>
</div>
    
@endsection