#Install dependencies

```
sudo apt-get install python2.7-dev silversearcher-ag
```

#Download & install powerline fonts

```
https://github.com/powerline/fonts.git
cd fonts
./install
```

#Install vundle

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
//in vim
:PluginInstall
```

#Gnome Terminal 24bit color support

```
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo apt-get update
sudo apt-get install gnome-terminal
sudo add-apt-repository -r ppa:gnome3-team/gnome3-staging
```

#VIM 24bit colors in terminal fork

```
hg clone http://bitbucket.org/ZyX_I/vim
hg bookmark 24-bit-xterm
./configure --with-features=huge --enable-rubyinterp --enable-termtruecolor --enable-pythoninterp
make && sudo make install
sudo rm /usr/bin/vi
sudo ln -s /usr/local/bin/vim /usr/bin/vi
```
