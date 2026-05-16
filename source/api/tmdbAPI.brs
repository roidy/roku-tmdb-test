function getTMDBPopularMovies(apiKey as String, pageNum = 1 as Integer)
    url = "https://api.themoviedb.org/3/movie/popular?api_key=" + apiKey + "&page=" + pageNum.toStr()
    
    http = CreateObject("roUrlTransfer")
    http.SetUrl(url)
    http.AddHeader("Content-Type", "application/json")
    
    response = http.GetToString()
    json = ParseJson(response)
    
    return json
end function

function getTMDBMovieDetails(apiKey as String, movieId as String)
    url = "https://api.themoviedb.org/3/movie/" + movieId + "?api_key=" + apiKey + "&append_to_response=videos,credits"
    
    http = CreateObject("roUrlTransfer")
    http.SetUrl(url)
    http.AddHeader("Content-Type", "application/json")
    
    response = http.GetToString()
    json = ParseJson(response)
    
    return json
end function

function searchTMDBMovies(apiKey as String, query as String)
    encodedQuery = http.UrlEncode(query)
    url = "https://api.themoviedb.org/3/search/movie?api_key=" + apiKey + "&query=" + encodedQuery
    
    http = CreateObject("roUrlTransfer")
    http.SetUrl(url)
    http.AddHeader("Content-Type", "application/json")
    
    response = http.GetToString()
    json = ParseJson(response)
    
    return json
end function
