. ./utils/colors.sh

#################################
# ALIASES                       #
#################################

# sorted alphabetically

alias expoClean="watchman watch-del-all && rm -rf node_modules && yarn install && rm -rf /tmp/metro-bundler-cache-* && rm -rf /tmp/haste-map-react-native-packager-* && echo expoClean: Complete"

alias rts="echo Hello, this is the first command"

alias rnClean="watchman watch-del-all && rm -rf $TMPDIR/react-native-packager-cache-* && rm -rf $TMPDIR/metro-bundler-cache-* && rm -rf node_modules/ && npm cache clean --force & npm install && cd ios && pod install && cd .. && npm run ios"

alias rnCleanYarn="watchman watch-del-all && rm -rf $TMPDIR/react-native-packager-cache-* && rm -rf $TMPDIR/metro-bundler-cache-* && rm -rf node_modules/ && yarn cache clean & yarn install && cd ios && pod install && cd .. && yarn ios"

#################################
# FUNCTIONS                     #
#################################

# main function for package which handles help functionality
_rts-zsh() {
  if [[ $1 == "-h" ]]; then
    if [[ $2 == "rnClean" ]]; then
      echo "${RED}rnClean \n${PURPLE}This is used to clean your react native project. It will remove packages, clear the cache, ect"
      return
      exit
    fi

    echo "Error: Please enter a command as the second arg"
    echo "Example: rts-zsh -h rnClean"
  fi
}

alias rts-zsh=_rts-zsh