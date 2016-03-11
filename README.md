# workflow
This is a collection of tools and customizations that I like to use for my development workflow.
You'll find setup instructions here mostly, I'm going to create separate files with tips on how I use some of the tools.


# iTerm
Highly recommend using [iTerm](https://www.iterm2.com/ "iTerm2") instead of Terminal for command line on Mac.
I'll create another file soon with bash tips, and include some tips on iTerm shortcuts and features I like to use there as well.

One change I recommend making immediately is changing the scrollback to unlimited:

* Open iTerm Preferences
* Go to the Profiles tab
* Under Scrollback Buffer check "Unlimited scrollback" (or set a larger number depending how much history you want to reserve)

You'll probably also want to set the login so that it doesn't ask for your username and password every time you open a new shell:

* In the profiles tab in preferences, select the "General" tab.
* Under the "Command" header, make sure "Login shell" is checked (by default it'll probably be Command: login -fp profile, you could also alter this command to pass credentials if you prefer)
* Under the "Working Directory" header, check "Home directory." I mostly do this so it loads my .bashrc file correctly when it runs from `.bash_profile` on the shell open.


# Vim
I use a lot of Vim plugins to customize my editor (thanks to Brian Cordonnier for suggesting a lot of these plugins).
These are the basic steps to test my configuration, and you can play with additional plugins or turn some off from there.

1. Install [Vundle](https://github.com/VundleVim/Vundle.vim "Vundle")

    `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Copy my .vimrc file to ~/.vimrc.

3. Add or remove plugins that you want to install in the .vimrc. Lines like `Plugin 'VundleVim/Vundle.vim'` define the plugins to be installed.

4. Open vim and run :PluginInstall

5. Alternatively from the command line run `$ vim +PluginInstall +qall`

6. Restart Vim and the plugins should be active.
