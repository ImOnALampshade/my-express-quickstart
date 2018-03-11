module.exports = (grunt) ->
  (require 'jit-grunt') grunt

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    less:
      all:
        options:
          compress: true
          yuicompress: true
          optimization: 2
          sourceMap: true

        expand: true
        cwd: 'less/'
        src: '**/*.less'
        dest: 'public/stylesheets'
        ext: '.css'

    coffee:
      all:
        options:
          bare: true
          sourceMap: true

        expand: true
        cwd: 'src/front/'
        src: [ '**/*.coffee' ]
        dest: 'public/javascripts'
        ext: '.js'

    watch:
      less:
        files: ['less/**/*.less']
        tasks: ['newer:less:all']
      coffee:
        files: ['src/front/**/*.coffee']
        tasks: ['newer:coffee:all']

  grunt.registerTask('default', ['newer:coffee', 'newer:less', 'watch'])
