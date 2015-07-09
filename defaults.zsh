if [[ "$ZSH_FIRST_START" == "true" ]]; then
  for defs in `ls $ZSH_OS_DIR/defaults.*.zsh`; do
    source $defs
  done
fi

# set mac os defaults

###############################################################################
# SizeUp.app                                                                  #
###############################################################################

# Start SizeUp at login
#defaults write com.irradiatedsoftware.SizeUp StartAtLogin -bool true

# Don’t show the preferences window on next start
#defaults write com.irradiatedsoftware.SizeUp ShowPrefsOnNextStart -bool false

###############################################################################
# Sublime Text                                                                #
###############################################################################

# Install Sublime Text settings
#cp -r init/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null

###############################################################################
# Twitter.app                                                                 #
###############################################################################

# Disable smart quotes as it’s annoying for code tweets
#defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# Show the app window when clicking the menu bar icon
#defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# Enable the hidden ‘Develop’ menu
#defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

# Open links in the background
#defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# Allow closing the ‘new tweet’ window by pressing `Esc`
#defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# Show full names rather than Twitter handles
#defaults write com.twitter.twitter-mac ShowFullNames -bool true

# Hide the app in the background if it’s not the front-most window
#defaults write com.twitter.twitter-mac HideInBackground -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

if [[ "$ZSH_FIRST_START" == "true" ]]; then
  for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
    "Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
    "Opera" "Safari" "SizeUp" "Spectacle" "SystemUIServer" "Terminal" \
    "Transmission" "Twitter" "iCal"; do
    killall "${app}" > /dev/null 2>&1
  done

  echo "Done. Note that some of these changes require a logout/restart to take effect."
fi

