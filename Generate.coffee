module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'

        copy:
            public:
                files: [
                        expand: true
                        cwd: 'build'
                        src: '**'
                        dest: 'public/javascript'
                    ,
                        expand: true
                        cwd: 'res'
                        src: '**'
                        dest: 'public/'
                ]

    grunt.loadNpmTasks 'grunt-contrib-copy'

    grunt.registerTask 'generate', ['compile', 'build', 'copy:public']
