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


# Virtual Environments
It's a good idea to start using virtual environments for all of your projects to avoid dependency and versioning issues.
Eventually you'll start running into problems where you have two or more projects that require the same packages, but expect different versions of those packages.
This can get really annoying when you're trying to work on a project because your system may currently be using the version from another project causing versioning issues and breaking stuff,
and you end up having to reinstall, or manually update configurations every time.

Virtual Environments create separate spaces that you can connect to, with independent install and access paths, so all you have to do is switch to the environment for your current project
and it has maintained the correct installations in a separate ecosystem.

To set up virtualenv:

1. Install with `$ pip install virtualenv` (may need to sudo that)

2. Install the virtualenv helper with `$ pip install virtualenvwrapper`

3. Add the following to your shell startup script (you can find them in my .bashprofile file in this repository):

    ```
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Devel
    source /usr/local/bin/virtualenvwrapper.sh
    ```

4. Create a new virtual environment. I create one for each project, and give it the same name as the project. So if I had a project called "Workflow" I would do:

    `mkvirtualenv Workflow`

5. Whenever you work on that project, start up the environment with

    `workon Workflow`

    Simply typing `$ workon` will list all of your existing environments.

6. I like to create an alias in my .bashrc to quickly get into the environment and navigate to the project directory to start working. For this "Workflow" project I would have something like:

    `alias workflow='cd ~/path/to/workflow/project && workon Workflow`

    That way just typing `$ workflow` in the command line instantly activates the environment and puts you in the project directory.

7. When an environment is active it should show by your profile in your bash prompt, so you'll see something like:

    `(Workflow) Your-Machine-Name:Directory username$ `

8. To exit an environment, just enter `$ deactivate`
