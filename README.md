# TMDB Movie Browser - Roku Channel

A simple Roku channel that displays popular movies from The Movie Database (TMDB) using sgrouter for navigation and promises-based API calls.

## Features
- Browse popular movies from TMDB
- View movie details
- Router-based scene navigation
- Simple promise-like API integration

## Setup

1. Get a free API key from [themoviedb.org](https://www.themoviedb.org/settings/api)
2. Replace `YOUR_TMDB_API_KEY_HERE` in `source/scenes/MainScene.brs` with your actual API key
3. Package the channel and deploy to your Roku device

## Project Structure

```
roku-tmdb-test/
├── manifest                    # Channel configuration
├── source/
│   ├── main.brs               # Entry point
│   ├── router.brs             # sgrouter implementation
│   ├── scenes/
│   │   ├── MainScene.xml      # Main scene UI
│   │   └── MainScene.brs      # Main scene logic
│   └── api/
│       └── tmdbAPI.brs        # TMDB API integration
└── README.md                   # This file
```

## Dependencies
- Roku SceneGraph SDK
- sgrouter for routing
- TMDB API

## Installation

Use the Roku Developer Portal to sideload this channel to your Roku device.

## API Functions

### getTMDBPopularMovies(apiKey, pageNum)
Fetches popular movies from TMDB.

### getTMDBMovieDetails(apiKey, movieId)
Fetches detailed information about a specific movie.

### searchTMDBMovies(apiKey, query)
Searches for movies by title.

## License
MIT
