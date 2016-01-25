sudo apt-get curl -y
sudo rm -rf /usr/local/lib/node_modules sudo rm -rf ~/.npm
mkdir "${HOME}/.npm-packages"
echo NPM_PACKAGES="${HOME}/.npm-packages" >> ${HOME}/.bashrc
echo prefix=${HOME}/.npm-packages >> ${HOME}/.npmrc
curl -L https://www.npmjs.org/install.sh | sh
echo NODE_PATH=\"\$NPM_PACKAGES/lib/node_modules:\$NODE_PATH\" >> ${HOME}/.bashrc
echo PATH=\"\$NPM_PACKAGES/bin:\$PATH\" >> ${HOME}/.bashrc
echo source "~/.bashrc" >> ${HOME}/.bash_profile
source ~/.bashrc