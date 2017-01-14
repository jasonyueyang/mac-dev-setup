# Script for installing MongoDB on Mac
#
# To use it, run `sudo sh setupMongoDb.sh`
#
# Manual installation instructions for Mac can be found here:
# https://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/
#
# For Windows, please follow these instructions:
# https://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/

if test ! $(which mongod); then
    echo "Checking for homebrew..."
    if test ! $(which brew); then
        echo "Installing homebrew..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
    fi

    echo "Updating brew"
    brew update

    echo "Installing mongodb"
    brew install mongodb

    echo "Creating defautl /data/db directory"
    mkdir -p /data/db

    echo "Granting read/write permission"
    chmod ugo+rw /data/db

    echo "Done."
else
    echo "MongoDB is already installed. Setup is skipped."
fi
