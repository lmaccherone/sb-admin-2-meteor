Meteor.startup(() ->
  $(window).bind("load resize", () ->
    topOffset = 50
    width = (if (@window.innerWidth > 0) then @window.innerWidth else @screen.width)
    if width < 768
      $("div.navbar-collapse").addClass("collapse")
      topOffset = 100
    else
      $("div.navbar-collapse").removeClass("collapse")
    height = (if (@window.innerHeight > 0) then @window.innerHeight else @screen.height)
    height = height - topOffset
    if height < 1
      height = 1
    if height > topOffset
      $("#page-wrapper").css("min-height", (height) + "px")
  )
)

Template.sidebar.rendered = () ->
  $('#side-menu').metisMenu()

Template.sidebar.navElements = () ->
  return Session.get('navRoots')

Template.navElement.isActive = () ->
  if this.name is Session.get('active')
    return "active"
  else
    return ""

Template.taskDropdownElement.progressBarType = () ->
  return "progress-bar-" + this.type

Template.taskDropdownElement.style = () ->
  return "width: " + this.percentComplete + "%"