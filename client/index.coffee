Meteor.startup(() ->

  Session.set('signUpErrorMessage', false)
  Session.set('signUpSuccessMessage', false)
  Session.set('loginErrorMessage', false)

  new ResizeSensor()

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

Template.topbar.events(
  'click #login': () ->
    $('#loginModal').modal('show')

  'click #sign-out': () ->
    Meteor.logout((err) ->
      if err?
        # !TODO: I should add a section for dismissable and timeout notifications... or maybe Growl-style notifications
        console.log(err)
    )
)

Template.sidebar.helpers(
  navElements: () ->
    return Session.get('navRoots')
)

Template.sidebar.rendered = () ->
  $('#side-menu').metisMenu()

Template.navElement.helpers(
  isActive: () ->
    if this.name is Session.get('active')
      return "active"
    else
      return ""
)

Template.taskDropdownElement.helpers(
  progressBarType: () ->
    return "progress-bar-" + this.type

  style: () ->
    return "width: " + this.percentComplete + "%"
)
