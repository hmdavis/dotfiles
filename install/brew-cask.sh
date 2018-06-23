brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages
apps=(
  alfred
  caffeine
  cyberduck
  dashlane
  evernote
  flux
  google-chrome
  mysqlworkbench
  postman
  sequel-pro
  slack
  spotify
  sublime-text
  vlc
)

brew cask install "${apps[@]}"

