author:
  name: ['Victor Hsieh']
  email: 'victor@csie.org'
name: 'crx-reloader'
description: 'Crx Reloader'
version: '0.6.0'
repository:
  type: 'git'
  url: 'git://github.com/victorhsieh/crx-reloader.git'
scripts:
  prepublish: """
    ./node_modules/.bin/lsc -cj package.ls
    ./node_modules/.bin/lsc -cbo lib src
  """
  publish: """
    rm ../cr-reloader.zip
    zip -r ../cr-reloader.zip . -x 'node_modules*' 'src*' npm-debug.log '.*.swp'
  """
main: 'lib/app.js'
engines:
  node: '0.8.x'
  npm: '1.1.x'
dependencies: {}
devDependencies:
  LiveScript: '1.1.x'
optionalDependencies: {}