# Mac Dev Environment Setup
This document describes how I set up the dev environment for Node.js, Python, and Java development on my Mac. The OS I'm using is OS X El Capitan.

## System preferences
Here are some of my settings.

* General
  * Sidebar icon size: Small
  * Automatically hide and show the menu bar: On
  * Default web browser: Google Chrome.app

* Dock
  * Size > smaller
  * Magnification: smaller
  * Automatically hide and show the Dock: On

* Language & Region
  * Add Chinese, Simplified

* Display
  * Automatically adjust brightness: Off

* Energy Saver:
  * Turn display off after: 2 min

* Keyboard
  * Delay Until Repeat: Short
  * Use all F1, F2 etc. keys as standard keys: On
  * Shortcuts > Input Sources > Select the previous input source: On

* Sound
  * Show volume in menu bar: On

* Internet Accounts
  * Add your favorite accounts 

## Command line environments
As a developer, you will spend a lot of time using the command window. Customizing the command line environment will make you more efficient. 

* Customize the "dot files" under your home directory.
 * Create [.bashrc](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.bashrc) 
 * Create [.profile](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.profile)
 * Create [.aliases](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.aliases)

## Software installation

### Automating the setup process
To save time, and to create a consistent dev environment, it is benefitial to automate the setup. 

You can take a look at the [.setup](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.setup) script as a reference. Make sure you understand what it does and customize it to tailor for your needs.

> :bulb: For [Chrome](https://www.google.com/chrome/browser/desktop/index.html), I find it easier to install manually. Otherwise you will need to go through special steps to get the password saving feature work.

### Setting up command line developer tools

I use [Homebrew](http://brew.sh/), the most popular package manager for OS X, to manage installation. Homebrew has a dependency on the command line developer tools, which can be installed either by downloading XCode, or by running the followiing command:
```
xcode-select --install
```

### Installing Homebrew
After this, you can check for Homebrew and install it if it's not present:
```
if test ! $(which brew); then 
	echo "Installing homebrew..." 
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
	echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
fi 
```

### Downloading packages
Now you can install a package (or a formula) like this:
```
brew install node
```

I typically install these:
* [Git](https://git-scm.com)
* [Node](https://nodejs.org/)
* [Python](https://www.python.org/)

> :bulb: You can check the Python version with `python -V`. The default Python from OS X is version 2.7.10. If you use `brew install python3`, it will install 3.5.0.

### Installing Homebrew-cask
For GUI applications, you will want to use [Homebrew-cask](http://caskroom.io):
```
brew install caskroom/cask/brew-cask
```

### Downloading Applications
You can use something like `brew cask search visual-studio-code` to search for an app. Or you can search apps at http://caskroom.io/search.

Once this is done, you can install your favorite applications like this:
```
brew cask install --appdir="/Applications" visual-studio-code
```

Here are some of my favorite applications:
  * [Visual Studio Code](https://code.visualstudio.com)
  * [Sublime Text](http://www.sublimetext.com)
  * [Alfred](https://www.alfredapp.com)
  * [Dropbox](https://www.dropbox.com)
  * [iTerm 2](https://www.iterm2.com)
  * [Skype](http://www.skype.com)
