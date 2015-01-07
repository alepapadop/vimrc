vimrc
=====

a simple vim configuration (vimrc) file

in order to use it you will need the following packages:

* git
* cmake
* python-dev
* gcc
* gcc-c++
* vim
* clang
* python-mock
* python-nose

If you like to install the manually the vimrc just download
the vimrc file, and replace the current .vimrc file in your
home folder and also download manually the Vundle plugin.
The open vim and run :PluginInstall and Vundle will install
the rest of the plugins. You will also need to compile manually
the YouCompleteMe plugin. You can find instructions in the 
plugin page.

For a automated installation download and run the python script 
"install_vimrc.py".  The script will download the Vundle
vim plugin and then install the rest of the plugins. The plugins
are the following:

* Vundle -> https://github.com/gmarik/Vundle.vim
* YouCompleteMe -> https://github.com/Valloric/YouCompleteMe
* NerdTree -> https://github.com/scrooloose/nerdtree
* Tagbar -> https://github.com/majutsushi/tagbar
* NerdCommenter -> https://github.com/scrooloose/nerdcommenter
* Airline -> https://github.com/bling/vim-airline
* Solarized -> https://github.com/altercation/solarized

in order to complete the YouCompleteMe plugin installation
the script will run the compilation of the plugin code.

There is also a cheat sheet with some vim commands for
beginners and also some custom shortcats. The cheat sheet
files are the "vim_cheat_sheet.odt" and "vim_cheat_sheet.pdf"
files.

The vimrc is tested in Fedora and OpenSuse boxes.

Have fun :)
