module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'
        concat:
            dist:
                src: ['compiled/lib/**/*.js']
                dest: 'build/index.js'
            options:
                separator: ';'

        uglify:
            min:
                files:
                    'build/index.min.js': ['build/index.js']
            # options:
            #     mangle:
            #         expect: ['jQuery']
            #    sourceMap: 'build/source-map.js'

    grunt.loadNpmTasks 'grunt-contrib-concat'
    grunt.loadNpmTasks 'grunt-contrib-uglify'

    grunt.registerTask 'build', ['concat', 'uglify']
