FROM ubuntu:latest
RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt install -y \
        fzf \
        ripgrep \
        zsh \
        less \
        exuberant-ctags \
        curl \
        wget \
        git \
        fish \
    # --------------------------- Install tmux -------------------------------
    # ...
    # ---------------------------- Config tmux -------------------------------
    # ...
    # ---------------------------- Config zsh --------------------------------
    # ...
    # --------------------------- Install zsh --------------------------------
    # ...
    # --------------------------- Install neimvim ----------------------------
    && wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    && chmod +x nvim.appimage && cp nvim.appimage /usr/bin/nvim
    # --------------------------- Config neovim ------------------------------
    # ...
    # -------------------------- Install neovim ------------------------------
    && wget https://mirrors.ustc.edu.cn/golang/go1.16.linux-amd64.tar.gz 
    && unzip go1.16.linux-amd64.tar.gz 

