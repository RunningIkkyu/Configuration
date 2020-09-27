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
        git 

#RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"

# Install plug-vim.
RUN mkdir -p ~/.local/share/nvim/site/autoload/
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://gitee.com/c4pr1c3/vim-plug/raw/master/plug.vim

# Download vim configuration file.
RUN curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://gitee.com/RunningIkkyu/configuration/raw/master/vim/init.vim
    
# Install Plulgins.
RUN vim +PlugInstall +qall


# Set golang proxy
RUN go env -w GOPROXY=https://goproxy.io,direct

# Install go binaries
RUN vim +GoInstallBinaries +qal

RUN cd ~ && mkdir code && cd code
