# my-express-quickstart

ExpressJS quickstart using coffeescript+pug+less

Includes a Dockerfile, and is set up to be deployed easily using
[now.sh](https://zeit.co/now).

# How to use

## On your own machine

You can compile and run with the command `npm run compile && npm start`.

You'll want `grunt` running in the background.
[`grunt-contrib-watch`](https://github.com/gruntjs/grunt-contrib-watch) is setup
to compile all changes made to the `src/front/` and `less/` directories into
javascript and css as you make changes.

## On a hosting service

Use the dockerfile - it is set up to run everything for you. It will:

* Run `npm install` to install all dependancies
* Run `npm run compile` to compile backend coffeescript
* Run `grunt coffee` to compile frontend coffeescript
* Run `grunt less` to compile less
* Start the app when the system starts up

