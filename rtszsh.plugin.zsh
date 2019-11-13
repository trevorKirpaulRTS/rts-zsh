#################################
# ALIASES                       #
#################################

# sorted alphabetically

alias rts="echo Hello, this is the first command"
alias rnClean="watchman watch-del-all && rm -rf $TMPDIR/react-native-packager-cache-* && rm -rf $TMPDIR/metro-bundler-cache-* && rm -rf node_modules/ && npm cache clean --force & npm install && cd ios && pod install && cd .. && npm run ios"
