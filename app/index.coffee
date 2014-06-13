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
			@installDependencies() unless @options["skip-install"]

	askFor: ->
		done = @async()

		# Have Yeoman greet the user.
		@log yosay("Welcome to the marvelous Jmpress generator!")
		prompts = [
			{
				name: "description"
				message: "Describe your presentation"
				default: "A sample description"
			}
			{
				name: "name"
				message: "What's the name of your presentation?"
				default: "default-value"
			}
			{
				name: "authorName"
				message: "What's your name?"
				default: "Author name"
			}
			{
				name: "authorEmail"
				message: "What's your e-mail?"
				default: "email@somedomain.com"
			}
			{
				name: "authorURL"
				message: "What's your website?"
				default: "somedomain.com"
			}
			{
				name: "license"
				message: "What's the copyright license?"
				default: "MIT"
			}
			{
				type: "confirm",
				name: "includeModernizr",
				message: "Use modernizr?"
			}
			{
				type: "confirm"
				name: "sassBoilerplate"
				message: "Use my sass boilerplate to quickly create base styles?"
			}

		]
		@prompt prompts, ((props) ->
			@description = props.description
			@name = props.name
			@authorName = props.authorName
			@authorEmail = props.authorEmail
			@authorURL = props.authorURL
			@license = props.license
			@sassBoilerplate = props.sassBoilerplate
			@includeModernizr = props.includeModernizr
			@currentDate = (new Date()).toString()
			done()
		).bind(this)
	createBrowserFiles: ->
		files = [
			"tile.png"
			"tile-wide.png"
			"crossdomain.xml"
			"browserconfig.xml"
			"favicon.ico"
			".htaccess"
			"robots.txt"
			"apple-touch-icon-precomposed.png"
		]
		for file in files
			@copy file, file
	createStyles: ->
		@template "styles/_style.scss", "styles/style.scss"
		if @sassBoilerplate then @copy "config.rb", "config.rb"
	createLayoutFiles: ->
		@template "_index.jade", "index.jade"
		@template "_layout.jade", "layout.jade"
	app: ->
		@mkdir "app"
		@mkdir "app/templates"
		@template "_package.json", "package.json"
		@template "_bower.json", "bower.json"

	projectfiles: ->
		@copy "editorconfig", ".editorconfig"
		@copy "jshintrc", ".jshintrc"
		@template "_readme.md", "readme.md"
)

module.exports = JmpressGenerator