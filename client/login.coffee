Template.loginForm.events({
  'submit #login-form': (e, t) ->
    e.preventDefault()
    Session.set('loginErrorMessage', false)
    email = t.find('#login-email').value
    password = t.find('#login-password').value
    Meteor.loginWithPassword(email, password, (err) ->
      if err?
        Session.set('loginErrorMessage', 'Sign In Failed: ' + err.reason)
      else
        Meteor.setTimeout(() ->
          $('#loginModal').modal('hide')
        , 400)
    )
    return false

  'click #sign-up-button': () ->
    $('#loginModal').on('hidden.bs.modal', () ->
      Router.go('/sign-up')
    ).modal('hide')
    return false
})

Template.signUp.events({
  'submit #sign-up-form': (e, t) ->
    e.preventDefault()
    Session.set('signUpErrorMessage', false)
    Session.set('signUpSuccessMessage', false)
    email = t.find('#login-email').value
    password = t.find('#login-password').value
    Accounts.createUser({email, password}, (err) ->
      if err?
        Session.set('signUpErrorMessage', 'Sign Up Failed: ' + err.reason)
      else
        Session.set('signUpSuccessMessage', 'Sign Up Succeeded.')
        Meteor.setTimeout(() ->
          Session.set('signUpSuccessMessage', false)
          Router.go('/')
        , 400)
    )
    return false
})

Template.signUp.errorMessage = () ->
  return Session.get('signUpErrorMessage')

Template.signUp.signUpSuccessMessage = () ->
  return Session.get('signUpSuccessMessage')

Template.loginForm.errorMessage = () ->
  return Session.get('loginErrorMessage')

Template.loginForm.currentUserMessage = () ->
  if Meteor.user()
    return 'Logged in as: ' + Meteor.user().emails[0].address
  else
    return false