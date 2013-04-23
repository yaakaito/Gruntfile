module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'
        typescript:
            compile:
                src: ['src/**/*.ts']
                dest: 'compiled'
                options:
                    module: 'commonjs'
                    target: 'es5'
                    # sourcemap: true
                    # declaration: true
            test:
                src: ['test/**/*.ts']
                dest: 'compiled'
                options:
                    module: 'commonjs'
                    target: 'es5'
                    # sourcemap: true
                    # declaration: true

        clean:
            type:
                src: ['compiled/**/*.js', 'compiled/*']

    grunt.loadNpmTasks 'grunt-typescript'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.registerTask 'type', ['typescript']
    grunt.registerTask 'default', ['type']