PWD:=$(shell pwd)

install: _git _vim

_git:
	@ln -sf ${PWD}/git/.gitconfig ${HOME}
	@ln -sf ${PWD}/git/.gitignore ${HOME}
	@ln -sf ${PWD}/git/.gitmessage ${HOME}

_vim:
	@mkdir -p ${HOME}/.vim/bundle
	@ln -sf ${PWD}/vim/.vimrc ${HOME}
	@ln -sf ${PWD}/vim/bundles.vim ${HOME}/.vim/
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	@vim +PluginInstall +qall

_zsh:
	@ln -sf ${PWD}/zsh/.zshrc ${HOME}
