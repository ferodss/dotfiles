PWD:=$(shell pwd)

install: _bash _git _vim

_bash:
	@ln -sf ${PWD}/.bash_profile ${HOME}
	@ln -sf ${PWD}/.bash_ps1 ${HOME}

_git:
	@ln -sf ${PWD}/git/.gitconfig ${HOME}
	@ln -sf ${PWD}/git/.gitignore ${HOME}
	@ln -sf ${PWD}/git/.gitmessage ${HOME}
	@ln -sf ${PWD}/git/.git-prompt.sh ${HOME}
	@ln -sf ${PWD}/git/.git-completion.bash ${HOME}


_vim:
	@mkdir -p ${HOME}/.vim/bundle
	@ln -sf ${PWD}/vim/.vimrc ${HOME}
	@ln -sf ${PWD}/vim/bundles.vim ${HOME}/.vim/
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	@vim +PluginInstall +qall

