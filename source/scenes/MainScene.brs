sub init()
    m.top.setFocus(true)
    m.movieGrid = m.top.findNode("movieGrid")
    
    ' Initialize router
    m.router = initRouter()
    
    ' Load movies from TMDB
    loadPopularMovies()
end sub

sub loadPopularMovies()
    ' Replace with your actual TMDB API key
    apiKey = "YOUR_TMDB_API_KEY_HERE"
    
    movies = getTMDBPopularMovies(apiKey, 1)
    
    if movies <> invalid and movies.results <> invalid
        m.movieGrid.content = createMovieContent(movies.results)
    end if
end sub

function createMovieContent(movieList)
    content = CreateObject("roSGNode", "ContentNode")
    
    for each movie in movieList
        movieNode = CreateObject("roSGNode", "ContentNode")
        movieNode.title = movie.title
        movieNode.description = movie.overview
        movieNode.posterURL = "https://image.tmdb.org/t/p/w500" + movie.poster_path
        movieNode.id = movie.id.toStr()
        movieNode.rating = movie.vote_average.toStr()
        content.appendChild(movieNode)
    end for
    
    return content
end function
