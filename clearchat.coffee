###
# clear all messages in a channel
# @param {Object} msg - The message object
###

class Clear
	constructor: (command, params, item) ->
		if command is "clear"
			if Meteor.user()?.admin is true
				ChatMessage.remove({"_id" : item.rid})


RocketChat.slashCommands.add 'clear', Clear
