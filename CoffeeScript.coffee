module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'
        coffee:
            compile:
                expand: true
                cwd: '.'
                src: ['src/**/*.coffee']
                dest: 'compiled'
                ext: '.js'
            spec:
                expand: true
                cwd: '.'
                src: ['test/**/*.coffee']
                dest: 'compiled'
                ext:  '.js'
                
        clean:
            coffee:
                src: ['compiled/**/*.js', 'compiled/*']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-clean'

    grunt.registerTask 'compile', ['coffee']
    grunt.registerTask 'default', ['coffee']