// Generated by CoffeeScript 1.7.1

/*
	generator-jmpress

	index.coffee

	@author Sean
	
	@note Created on 2014-06-13 by PhpStorm
	@note uses Codoc
	@see https://github.com/coffeedoc/codo
 */

(function() {
  "use strict";
  var JmpressGenerator, chalk, path, util, yeoman, yosay;

  util = require("util");

  path = require("path");

  yeoman = require("yeoman-generator");

  yosay = require("yosay");

  chalk = require("chalk");

  JmpressGenerator = yeoman.generators.Base.extend({
    init: function() {
      this.pkg = require("../package.json");
      return this.on("end", function() {
        if (!this.options["skip-install"]) {
          return this.installDependencies();
        }
      });
    },
    askFor: function() {
      var done, prompts;
      done = this.async();
      this.log(yosay("Welcome to the marvelous Jmpress generator!"));
      prompts = [
        {
          type: "confirm",
          name: "someOption",
          message: "Would you like to enable this option?",
          "default": true
        }
      ];
      return this.prompt(prompts, (function(props) {
        this.someOption = props.someOption;
        return done();
      }).bind(this));
    },
    app: function() {
      this.mkdir("app");
      this.mkdir("app/templates");
      this.copy("_package.json", "package.json");
      return this.copy("_bower.json", "bower.json");
    },
    projectfiles: function() {
      this.copy("editorconfig", ".editorconfig");
      return this.copy("jshintrc", ".jshintrc");
    }
  });

  module.exports = JmpressGenerator;

}).call(this);

//# sourceMappingURL=index.map