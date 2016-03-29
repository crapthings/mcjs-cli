Template.login.viewmodel

	events:

		'submit form': (e) ->
			do e.preventDefault
			username = do ($ '.data-user-username').val
			password = do ($ '.data-user-password').val
			Meteor.loginWithPassword username, password, (err) ->
				unless err
					Router.go 'home'


		'click .method-user-register': (e) ->
			do e.preventDefault
			opt =
				username: do ($ '.data-user-username').val
				password: do ($ '.data-user-password').val
			Accounts.createUser opt, (err) ->
				unless err
					Router.go 'home'
