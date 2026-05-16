function initRouter()
    router = {}
    router.routes = {}
    
    ' Define routes
    router.routes["main"] = {
        scene: "MainScene",
        handler: MainHandler
    }
    
    router.routes["details"] = {
        scene: "MovieDetailsScene",
        handler: DetailsHandler
    }
    
    router.navigate = function(routeName, params = {})
        if m.routes[routeName] <> invalid
            route = m.routes[routeName]
            ' Navigate to scene
            return route
        else
            print "Route not found: " + routeName
            return invalid
        end if
    end function
    
    return router
end function

function MainHandler(params)
    ' Handle main scene navigation
    return true
end function

function DetailsHandler(params)
    ' Handle details scene navigation
    return true
end function
