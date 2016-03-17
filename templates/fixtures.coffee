Meteor.startup ->

	unless Meteor.users.findOne { username: 'demo' }
		Accounts.createUser
			username: 'demo'
			password: 'demo'

	unless Meteor.users.findOne { username: 'admin' }
		Accounts.createUser
			username: 'admin'
			password: 'admin'
