 <nav class="navbar navbar-expand-lg bg-danger navbar-dark sticky-top ">
    <div class="container">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link {{ $active === "home" ? 'active' : ''}}" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ $active === "about" ? 'active' : ''}}" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ $active === "posts" ? 'active' : ''}}" href="/blog">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ $active === "categories" ? 'active' : ''}}" href="/categories">Categories</a>
          </li>
        </ul>


        <ul class=" navbar-nav ms-auto ">
        @auth
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Welcome back, {{ auth()->user()->name }}
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/dashboard">My Dashboard<i class="bi bi-grid-1x2"></i></a></li>
            <li><hr class="dropdown-divider"></li>
            <form action="/logout" method="POST">
              @csrf
              <button type="submit" class=" dropdown-item">Logout<i class="bi bi-box-arrow-right"></i></button>
            </form>
          </ul>
        </li>
            @else
              <li class=" nav-item">
                
                <a href="/login" class="nav-link" {{ $active === "login" ? 'active' : ''}}>Login<i class="bi bi-box-arrow-in-right"></i></a>
              </li>
              
              @endauth
            </ul>
        </div>
    </div>
  </nav>