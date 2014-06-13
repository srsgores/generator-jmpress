###
	generator-jmpress

	index.coffee

	@author Sean
	
	@note Created on 2014-06-13 by PhpStorm
	@note uses Codoc
	@see https://github.com/coffeedoc/codo
###

"use strict"
util = require("util")
path = require("path")
yeoman = require("yeoman-generator")
yosay = require("yosay")
chalk = require("chalk")
JmpressGenerator = yeoman.generators.Base.extend(
	init: ->
		@pkg = require("../package.json")
		@on "end", ->
			@installDependencies()  unless @options["skip-install"]

	askFor: ->
		done = @async()

		# Have Yeoman greet the user.
		@log yosay("Welcome to the marvelous Jmpress generator!")
		prompts = [
			type: "confirm"
			name: "someOption"
			message: "Would you like to enable this option?"
			default: true
		]
		@prompt prompts, ((props) ->
			@someOption = props.someOption
			done()
		).bind(this)

	app: ->
		@mkdir "app"
		@mkdir "app/templates"
		@copy "_package.json", "package.json"
		@copy "_bower.json", "bower.json"

	projectfiles: ->
		@copy "editorconfig", ".editorconfig"
		@copy "jshintrc", ".jshintrc"
)

module.exports = JmpressGenerator