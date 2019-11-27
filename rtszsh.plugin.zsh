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
      echo "${CYAN}rnClean \n${PURPLE}This command can be used to clear cached packages and build artifacts when working with a React Native project. \nThis command will run the following: \n- watchman watch-del-all \n- rm -rf $TMPDIR/react-native-packager-cache-* \n- rm -rf $TMPDIR/metro-bundler-cache-* \n- rm -rf node_modules/ \n- npm cache clean \n- npm install \n- cd ios && pod install && cd .. \n- npm run ios"
      return
      exit
    fi

    if [[ $2 == "rnCleanYarn" ]]; then
      echo "${CYAN}rnCleanYarn \n${PURPLE}This command is exactly like ${CYAN}rnClean ${PURPLE}except it will use the yarn package manager instead of npm"
      return
      exit
    fi

    if [[ $2 == "expoClean" ]]; then
      echo "${CYAN}expoClean \n${PURPLE}This command can be used to clear cached packages and build artifacts when working on an ${CYAN}expo ${PURPLE}project. \nThis command will run the following: \n- watchman watch-del-all \n- rm -rf node_modules \n- yarn install \n- rm -rf /tmp/metro-bundler-cache-* \n- rm -rf /tmp/haste-map-react-native-packager-* \n- echo expoClean: Complete"
      return
      exit
    fi

    echo "Error: Please enter a command as the second arg"
    echo "Example: rts-zsh -h rnClean"
  fi
}

alias rts-zsh=_rts-zsh