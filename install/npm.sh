export PROFILE=~/.bash/nvm
export NVM_DIR=~/.nvm
mkdir -p $NVM_DIR
touch $PROFILE
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash
unset PROFILE
. ~/.bash/nvm

nvm install stable
nvm use stable

npm install -g bower
npm install -g grunt-cli
npm install -g gulp
npm install -g http-server
npm install -g jsmin
npm install -g pakmanager
npm install -g yo
