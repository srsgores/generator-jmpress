// Generated by CoffeeScript 1.7.1

/*
	generator-jmpress

	test-creation.coffee

	@author Sean
	
	@note Created on 2014-06-13 by PhpStorm
	@note uses Codoc
	@see https://github.com/coffeedoc/codo
 */

(function() {
  "use strict";
  var helpers, path;

  path = require("path");

  helpers = require("yeoman-generator").test;

  describe("jmpress generator", function() {
    beforeEach(function(done) {
      return helpers.testDirectory(path.join(__dirname, "temp"), (function(err) {
        if (err) {
          return done(err);
        }
        this.app = helpers.createGenerator("jmpress:app", ["../../app"]);
        return done();
      }).bind(this));
    });
    return it("creates expected files", function(done) {
      var expected;
      expected = [".jshintrc", ".editorconfig"];
      helpers.mockPrompt(this.app, {
        description: "A sample description",
        name: "Test Name",
        authorName: "Test Author Name",
        authorEmail: "author@gmail.com",
        authorURL: "http://me.com",
        license: "DWTFYW (Do What the Fuck You Want License)",
        includeModernizr: false,
        sassBoilerplate: true
      });
      this.app.options["skip-install"] = true;
      return this.app.run({}, function() {
        helpers.assertFile(expected);
        return done();
      });
    });
  });

}).call(this);

//# sourceMappingURL=test-creation.map
