run_grunt() {
  if [ -f $BUILD_DIR/grunt.js ] || [ -f $BUILD_DIR/gruntfile.js ] || [ -f $BUILD_DIR/Gruntfile.js ] || [ -f $BUILD_DIR/Gruntfile.coffee ]; then
    echo "-----> Found Gruntfile, running grunt heroku task"
    if [ -f $BUILD_DIR/node_modules/grunt-cli/bin/grunt ]; then
      $BUILD_DIR/node_modules/grunt-cli/bin/grunt heroku
    elif [ -f $BUILD_DIR/node_modules/grunt/node_modules/grunt-cli/bin/grunt ]; then
      $BUILD_DIR/node_modules/grunt/node_modules/grunt-cli/bin/grunt heroku
    else
      $BUILD_DIR/node_modules/grunt/bin/grunt heroku
    fi
  else
    echo "-----> No gruntfile (grunt.js) found"
  fi
}
