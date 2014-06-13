# generator-jmpress [![Build Status](https://secure.travis-ci.org/srsgores/generator-jmpress.png?branch=master)](https://travis-ci.org/srsgores/generator-jmpress)

> [Yeoman](http://yeoman.io) generator for [jmpress](http://jmpressjs.github.io/jmpress.js/) slide decks in pure HTML/CSS.

It will scaffold out new slide decks with header info in each file as follows:

```
/*
@package: Test Name (app)

@author: Test Author Name
@www: http://me.com

@copyright: COPYRIGHT Fri Jun 13 2014 17:33:27 GMT-0600 (Mountain Daylight Time) DWTFYW (Do What the Fuck You Want License)
@license: DWTFYW (Do What the Fuck You Want License)

Filename: style.scss

This file is responsible for all styles on the Test Name app.  Styles should be compiled using compass and sass.
*/
```

It's very helpful for creating presentations.

## Features


* Jade-ready.  I assume you will compile with an IDE like PHPStorm, or a tool like prepros or CodeKit
* **Based off the HTML5 boilerplate**.  You can actually expect root-level files like ``browserconfig.xml`` or ``apple-touch-icon-precomposed.png``
* Ready to go with my [sass boilerplate](https://github.com/srsgores/sass-boilerplate).
* **Bootstrap-free**!  But you can still use bootstrap if you really want to.

Generates:

* [Codo](https://github.com/coffeedoc/codo) javascript comments and header comments
* html header, footer, and ARIA roles

## Getting Started
## Quick Start

1. Install [nodejs](http://nodejs.org)
2. (Windows) Restart
3. Install [yeoman](http://yeoman.io):
```npm install -g yo```
4. Install *generator-jmpress* **globally** from npm:
```npm install -g generator-jmpress```
5. Run the generator: ```bash $ yo jmpress```


## License

MIT
