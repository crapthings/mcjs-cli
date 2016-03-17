#

Router.configure

	layoutTemplate: 'layout_default'

#

Router.onBeforeAction ->

	unless do Meteor.userId
		@layout 'layout_blank'
		@render 'login'
	else
		do @next
