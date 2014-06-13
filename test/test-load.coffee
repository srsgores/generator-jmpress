###
	generator-jmpress

	test-load.coffee

	@author Sean
	
	@note Created on 2014-06-13 by PhpStorm
	@note uses Codoc
	@see https://github.com/coffeedoc/codo
###

#global describe, beforeEach, it
"use strict"
assert = require("assert")
describe "jmpress generator", ->
	it "can be imported without blowing up", ->
		app = require("../app")
		assert app isnt `undefined`