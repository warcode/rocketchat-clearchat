###
# clear all messages in a channel
# @param {Object} msg - The message object
###

class Clear
	constructor: (command, params, item) ->
		if command is "clear"
			currentUser = Meteor.user()
			if currentUser.admin is true
				ChatMessageHistory.remove
					rid: item.rid


RocketChat.slashCommands.add 'clear', Clear
