module.exports = (grunt) ->

    path = require 'path'

    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'

        connect:
            preview:
                options:
                    port: 9000
                    base: 'public'

        regarde:
            src:
                files: ['src/**/*.*']
                tasks: ['generate']


    grunt.loadNpmTasks 'grunt-contrib-connect'
    grunt.loadNpmTasks 'grunt-regarde'

    grunt.registerTask 'preview', ['generate', 'connect:preview', 'regarde']
