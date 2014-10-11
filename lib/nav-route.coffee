class NavRoute
  constructor: (@name, @icon, @config) ->
    unless @name?
      throw new Error('Must provide a name for each NavRoute')
    unless @config?
      @config = {}
    {@template, @isMainNav, @label, @path, @parentName} = @config
    unless @template?
      @template = @name
    unless @isMainNav?
      @isMainNav = true
    unless @label?
      @label = @name.substr(0, 1).toUpperCase() + @name.substr(1)
    unless @path?
      @path = '/' + @name
    unless @icon?
      @icon = null

class NavRouteList
  constructor: (navRoutes, @redirects) ->
    @routes = []
    @routeIndex = {}
    @rootRoutes = []
    for route in navRoutes
      @addRoute(route)
    @setRouter()

  addRoute: (route) ->
    if @routeIndex.hasOwnProperty(route.name)
      throw new Error('Route names must be unique')
    unless route.children?
      route.children = []
    if route.parentName?
      parentRoute = @getRoute(route.parentName)
      route.path = parentRoute.path + route.path
      parentRoute.children.push(route)
    else
      @rootRoutes.push(route)
    @routes.push(route)
    @routeIndex[route.name] = route

  getRoute: (name) ->
    return @routeIndex[name]

  setRouter: (layoutTemplate = 'mainLayout', redirectTemplate = 'loading', notFoundTemplate = '404') ->
    Router.configure({layoutTemplate})
    # set redirects in routes
    for r in @redirects
      for f in r.from
        Router.route('redirect', {path: f, template: redirectTemplate})
    # set regular routes
    for r in @routes
      Router.route(r.name, r)
    # set catch all route
    Router.route('not-found', {path: '/*', template: notFoundTemplate})
    Router.onRun(@getOnRun(@redirects))

  getOnRun: (redirects) ->
    onRun = () ->
      for r in redirects
        if @path in r.from
          Router.go(r.to)
        else
          Session.set('active', @route.name)
    return onRun

this.NavRoute = NavRoute
this.NavRouteList = NavRouteList