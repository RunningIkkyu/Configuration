FROM ubuntu:latest
RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt install -y \
        neovim \
        fzf \
        golang \
        ripgrep \
        zsh \
        less \
        exuberant-ctags \
        curl \
        wget \
        git \
        fish \
    && mkdir -p ~/.local/share/nvim/site/autoload/ \ 
    && curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://gitee.com/c4pr1c3/vim-plug/raw/master/plug.vim \
    && mkdir -p ~/.config/nvim \
    && curl -fLo ~/.config/nvim/init.vim --create-dirs \
        https://raw.githubusercontent.com/RunningIkkyu/Configuration/master/Linux/vim/init.vim \
    && vim +PlugInstall +qall \
    && go env -w GOPROXY=https://goproxy.io,direct \
    && vim +GoInstallBinaries +qal \
    && mkdir -p /home/code \
    && mkdir -p ~/.config/fish \
    && cd ~/.config/fish/ && touch config.fish \ 
    && echo "cd ~" >> ~/.config/fish/config.fish \ 
    && echo "export EDITOR=vim" >> ~/.config/fish/config.fish

