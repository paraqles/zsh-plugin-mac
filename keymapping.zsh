key[up]='\033[A'
key[down]='\033[B'
key[right]='\033[C'
key[left]='\033[D'

key[delete]='\033[3~'
key[backspace]='\b'

key[ctrl_delete]='\033[3~'

key[ctrl_left]='\001'
key[ctrl_right]='\005'
key[home]='\002'
key[end]='\006'

key[ctrl_delete]='\033\033[Z'
key[ctrl_backspace]='\033\033[Y'

key[delete]='\033[3~'
key[backspace]='\b'

if [[ "$ZSH_FIRST_START" == true ]]; then
  echo "You start the ZSH config for the first time on a Mac OS X."
  echo "I would avise to configure your Terminal.app or iTerm.app"
  echo "for following key mapping:"
  echo ""

  echo "Option + Left Cursor:\t\\\\001\t\t\t(Terminal.app)"
  echo "or\t\t\t0x01\t\t\t(iTerm.app - Send Hex Code)"
  echo ""

  echo "Option + Right Cursor:\t\\\\005\t\t\t(Terminal.app)"
  echo "or\t\t\t0x05\t\t\t(iTerm.app - Send Hex Code)"
  echo ""

  echo "Option + Backspace:\t\\\\033\\\\033[Y\t\t(Terminal.app)"
  echo "or\t\t\t0x1b 0x1b 0x5b 0x59\t(iTerm.app - Send Hex Code)"
  echo ""

  echo "Option + Delete:\t\\\\033\\\\033[Z\t\t(Terminal.app)"
  echo "or\t\t\t0x1b 0x1b 0x5b 0x5a\t(iTerm.app - Send Hex Code)"
  echo ""

fi
