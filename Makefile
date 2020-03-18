PWD:=$(shell pwd)

install: _fish _git _vim

_fish:
	@mkdir -p ${HOME}/.config/fish
	@ln -sf ${PWD}/fish/config.fish ${HOME}/.config/fish/
	@ln -sf ${PWD}/fish/fish_variables ${HOME}/.config/fish/
	@ln -sf ${PWD}/fish/functions ${HOME}/.config/fish/

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

