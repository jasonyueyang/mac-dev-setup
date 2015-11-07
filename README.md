# Mac Dev Environment Setup
This document describes how I set up the dev environment for Node.js, Python, and Java development on my Mac. I hope this is a helpful reference for you to set up your machine. If you have additional tips and tricks that I should include, please send me a pull request.

The OS I'm using is OS X El Capitan.

## System preferences
Here are some of my settings.
* General > Sidebar icon size: Small
* General > Automatically hide and show the menu bar: On
* General > Default web browser: Google Chrome.app
* Dock > Size: smaller
* Dock > Magnification: smaller
* Dock > Automatically hide and show the Dock: On
* Language & Region > Add Chinese, Simplified
* Display > Automatically adjust brightness: Off
* Energy Saver > Turn display off after: 2 min
* Keyboard > Delay Until Repeat: Short
* Keyboard > Use all F1, F2 etc. keys as standard keys: On
* Keyboard > Shortcuts > Input Sources > Select the previous input source: On
* Sound > Show volume in menu bar: On
* Internet Accounts > Add your favorite accounts 

## Command line environments
As a developer, you will spend a lot of time using the command window. Customizing the command line environment will make you more efficient. 

* Customize the "dot files" under your home directory.
 * Create [.bashrc](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.bashrc) 
 * Create [.profile](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.profile)
 * Create [.aliases](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.aliases)

> :bulb: If you're not familiar with shell commands, it's well worth brushing up on your [CLI commands](http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything ).

## Software installation

### Automating the setup process
To save time, and to create a consistent dev environment, it is benefitial to automate the setup. 

You can take a look at the [.setup](https://github.com/jasonyueyang/mac-dev-setup/blob/master/.setup) script as a reference. Make sure you understand what it does and customize it to tailor for your needs.

> :bulb: For [Chrome](https://www.google.com/chrome/browser/desktop/index.html), I find it easier to install manually. Otherwise you will need to go through special steps to get the password saving feature work.

### Command line developer tools

I use [Homebrew](http://brew.sh/), the most popular package manager for OS X, to manage installation. Homebrew has a dependency on the command line developer tools, which can be installed either by downloading XCode, or by running the followiing command:
```
xcode-select --install
```

To check if it's installed properly, you can print the active developer directory:
```
xcode-select -p
```

### Homebrew

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

### Homebrew-cask
For GUI applications, you will want to use [Homebrew-cask](http://caskroom.io):
```
brew install caskroom/cask/brew-cask
```

### Downloading applications
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

> :bulb: To run Code directldsy from command line, you can add the following to your .bashrc file. Then you can run Code with somethig like `code foo.txt`.
```
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
```

> :bulb: You can also create a shortcut to launch Sublime Text from command line:
```
cd ~
mkdir Bin
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/Bin/sub
```

> :bulb: If you are a VIM lover like me, you can turn on VIM in Sublime:
```
Preferences > Settings-Default > Remove ”ignored_packages": ["Vintage"] (and the last trailing comma)
Preferences > Settings-User: Add "vintage_start_in_command_mode": true
```

In addition, I also install iTunes, OneNote, OneDrive, Outlook, Word, PowerPoint, Excel, and Skype for Business.
