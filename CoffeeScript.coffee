module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'
        coffee:
            compile:
                expand: true
                cwd: '.'
                src: ['lib/**/*.coffee']
                dest: 'compiled'
                ext: '.js'
            spec:
                expand: true
                cwd: '.'
                src: ['spec/**/*.coffee']
                dest: 'compiled'
                ext:  '.js'
                
        clean:
            coffee:
                src: ['compiled/**/*.js', 'compiled/*']

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.registerTask 'default', ['coffee']