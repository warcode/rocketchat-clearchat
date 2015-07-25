Package.describe({
	name: 'rocketchat:clearchat',
	version: '1.0.0',
	summary: 'Lets admins remove all chat messages from a channel.',
	git: ''
});

Package.onUse(function(api) {
	api.versionsFrom('1.0');

	api.use([
		'coffeescript',
		'rocketchat:lib@0.0.1'
	]);

	api.addFiles('clearchat.server.coffee', ['server']);
	api.addFiles('clearchat.client.coffee', ['client']);
});

Package.onTest(function(api) {

});
