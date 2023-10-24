
@extends('layout.main')

@section('container')
<div class="container">
  <div class="row justify-content-center mb-5 ">
    <div class="col-md-8">
      <h2>{{$post->title}}</h2>
      <p>
        By <a href="/blog?author={{ $post->author->username }}" class=" text-decoration-none ">{{ $post->author->name }}</a> in 
        <a href="/blog?category=  {{ $post->category->slug }}">{{ $post->category->nama }}</a>
      </p>

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

    <a href="/blog">Bck to posts</a>
    </div>
  </div>
</div>

@endsection




