@extends('dashboard.layout.main')

@section('container')
<div class="container">
  <div class="row my-3 ">
    <div class="col-lg-8">
      <h2>{{$post->title}}</h2>
      
      <a href="/dashboard/posts" class=" btn btn-success my-3">Back to My Post <span class="bi" data-feather="arrow-left"></span></a>
      <a href="/dashboard/posts/{{ $post->slug }}/edit" class=" btn btn-warning my-3">Edit <span class="bi" data-feather="edit"></span></a>
      <form action="/dashboard/posts/{{ $post->slug }}" method="POST" class="d-inline">
        @method('delete')
        @csrf
        <button class="btn btn-danger" onclick="return confirm('Yakin?')">Delete <span class="bi" data-feather="x-circle"></span></button>
      </form>

      @if ($post->image)
      <div style="max-height: 350px; overflow:hidden">
        <img src="{{ asset('storage/' . $post->image) }}" class=" img-fluid " alt="{{ $post->category->nama }}">
      </div>
        @else
      <img src="https://source.unsplash.com/1200x400?{{ $post->category->nama }}" class=" img-fluid " alt="{{ $post->category->nama }}">
      @endif

      

      <article class="my-3 fs-5 ">

        {{-- agar bisa memakai html syntax !! --}}
        {!!$post->body!!}
      </article>
    </div>
  </div>
</div>
@endsection