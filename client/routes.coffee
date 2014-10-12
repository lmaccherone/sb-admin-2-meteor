navRoutes = [
  new NavRoute('dashboard', 'fa-dashboard')
  new NavRoute('charts', 'fa-bar-chart-o')
  new NavRoute('chart1', '', {parentName: 'charts'})
  new NavRoute('chart2', 'fa-bar-chart-o', {parentName: 'charts'})
  new NavRoute('tables', 'fa-table')
  new NavRoute('forms', 'fa-edit')
  new NavRoute('ui-elements', 'fa-wrench', {label: "UI Elements"})
  new NavRoute('buttons', '', {parentName: 'ui-elements'})
  new NavRoute('typography', '', {parentName: 'ui-elements'})
  new NavRoute('grid', '', {parentName: 'ui-elements'})
  new NavRoute('notifications', '', {parentName: 'ui-elements'})
  new NavRoute('panels-and-wells', '', {parentName: 'ui-elements', label: 'Panels and Wells'})
  new NavRoute('pages', 'fa-files-o', {label: "Sample Pages"})
  new NavRoute('blank', '', {parentName: 'pages', label: "Blank Page"})
  new NavRoute('login-ref', '', {redirect: 'login', parentName: 'pages', template: 'login', layoutTemplate: 'loginLayout'})
  new NavRoute('login', '', {isMainNav: false, layoutTemplate: 'loginLayout'})
  new NavRoute('', '', {isMainNav: false, redirect: 'dashboard'})
  new NavRoute('index', '', {isMainNav: false, redirect: 'dashboard'})
]

navRouteList = new NavRouteList(navRoutes)

Session.set('navRoots', navRouteList.rootNavRoutes)