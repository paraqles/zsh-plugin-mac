###############################################################################
[[ $ZSH_VERBOSE ]] && echo "Time Machine Defaults"
###############################################################################

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

if [[ "$ZSH_FIRST_START" == "true" ]]; then
  # Disable local Time Machine backups
  hash tmutil &> /dev/null && sudo tmutil disablelocal
fi

