PWD:=$(shell pwd)

install: _homebrew _git _vim _zsh

_homebrew:
	@/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@brew update && brew upgrade
	@brew bundle install --file=${PWD}/Brewfile

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
