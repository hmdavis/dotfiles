brew tap Goles/battery

# Install packages
apps=(
  battery
  coreutils
  diff-so-fancy
  dockutil
  git
  git-extras
  httpie
  pandoc
  peco
  scala
  wget
  wifi-password
)

brew install "${apps[@]}"
