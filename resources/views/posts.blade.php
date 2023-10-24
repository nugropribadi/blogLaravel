
@extends('layout.main')

@section('container')
    <h1 class="mb-3 text-center">{{ $title }}</h1>

    <div class="row justify-content-center mb-3">
      <div class="col-md-6">
        <form action="/blog " method="GET">
          
          @if (request('category'))
            <input type="hidden" name="category" value="{{ request('category') }}">
          @endif

          @if (request('author'))
            <input type="hidden" name="author" value="{{ request('author') }}">
          @endif
          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
            <button class="btn btn-danger" type="submit" >Search</button>
          </div>
        </form>
      </div>
    </div>


    @if ($posts->count() > 0)
        
    <div class="card mb-3">
      @if ($posts[0]->image)
      <div style="max-height: 350px; overflow:hidden">
        <img src="{{ asset('storage/' . $posts[0]->image) }}" class=" img-fluid " alt="{{ $posts[0]->category->nama }}">
      </div>
        @else
        <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->nama }}" class="card-img-top" alt="{{ $posts[0]->category->nama }}">
      @endif
     
      <div class="card-body text-center">
        <h5 class="card-title">
          <a href="/posts/{{$posts[0]->slug}}" class=" text-decoration-none text-dark ">{{ $posts[0]->title }}</a>
        </h5>
        <p>
          <small class="text-body-secondary">
            By <a href="/blog?author={{ $posts[0]->author->username }}" class=" text-decoration-none ">{{ $posts[0]->author->name }}</a>
             in <a href="/blog?category={{ $posts[0]->category->slug }}" class=" text-decoration-none ">{{ $posts[0]->category->nama }}</a>
              {{ $posts[0]->created_at->diffForHumans() }}</p>
          </small>
        </p>

          <p class="card-text">{{ $posts[0]->excerpt }}</p>

          <a href="/posts/{{$posts[0]->slug}}" class="text-decoration-none btn btn-primary  ">Read More</a>
      </div>
    </div>

    
    <div class="container">
      <div class="row">
         {{-- karena post 0 akan sudah muncul paling besar jadi kita menggunakan method skip, jadi yang lanjut id selanjutnya --}}
        @foreach ( $posts->skip(1) as $post)
            
        <div class="col-md-4 mb-3 ">
          <div class="card">
            <div class=" position-absolute bg-dark px-3 py-2 rounded-2 ">
              <a class=" text-decoration-none text-white" href="/blog?category={{ $post->category->slug }}">{{ $post->category->nama }}</a>
            </div>

            @if ($post->image)
              <img src="{{ asset('storage/' . $post->image) }}" class=" img-fluid " alt="{{ $post->category->nama }}">
              @else
              <img src="https://source.unsplash.com/500x400?{{ $post->category->nama }}" class="card-img-top" alt="{{ $post->category->nama }}">
            @endif

            
            <div class="card-body">
              <h5 class="card-title ">
                <a class="text-dark text-decoration-none " href="/posts/{{$post->slug}}">{{$post->title}}</a>
              </h5>
              <p>
                <small class="text-body-secondary">
                  By <a href="/blog?author={{ $post->author->username }}" class=" text-decoration-none ">{{ $post->author->name }}</a>
                  {{ $post->created_at->diffForHumans() }}</p>
                </small>
              </p>
              <p class="card-text">{{$post->excerpt}}</p>
              <a href="/posts/{{$post->slug}}" class="btn btn-primary">Read More</a>
            </div>
          </div>
        </div>
        @endforeach
      </div>
    </div>
    
    @else
        <p class=" text-center fs-4 ">No Post Found</p>
    @endif
      <div class=" mb-5 mt-5">
        {{ $posts->links() }}
      </div>
    
@endsection
