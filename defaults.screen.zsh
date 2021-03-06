###############################################################################
[[ $ZSH_VERBOSE ]] && echo "Screen Defaults"
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop
if [[ ! -e "${HOME}/Screenshots" ]]; then
  mkdir -p "${HOME}/Screenshots"
fi
defaults write com.apple.screencapture location -string "${HOME}/Screenshots/"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

if [[ "$ZSH_FIRST_START" == "true" ]]; then
  # Enable HiDPI display modes (requires restart)
  sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
fi

