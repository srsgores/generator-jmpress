###
	generator-jmpress

	test-creation.coffee

	@author Sean
	
	@note Created on 2014-06-13 by PhpStorm
	@note uses Codoc
	@see https://github.com/coffeedoc/codo
###

#global describe, beforeEach, it
"use strict"
path = require("path")
helpers = require("yeoman-generator").test
describe "jmpress generator", ->
	beforeEach (done) ->
		helpers.testDirectory path.join(__dirname, "temp"), ((err) ->
			return done(err) if err
			@app = helpers.createGenerator("jmpress:app", ["../../app"])
			done()
		).bind(this)

	it "creates expected files", (done) ->
		expected = [

			# add files you expect to exist here.
			".jshintrc"
			".editorconfig"
		]
		helpers.mockPrompt @app,
			someOption: true

		@app.options["skip-install"] = true
		@app.run {}, ->
			helpers.assertFile expected
			done()