###############################################################################
[[ $ZSH_VERBOSE ]] && echo "GPGMail 2 Defaults"
###############################################################################

# Disable signing emails by default
defaults write ~/Library/Preferences/org.gpgtools.gpgmail SignNewEmailsByDefault -bool false

