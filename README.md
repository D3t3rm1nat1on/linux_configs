# linux_config

Update .gitconfig:
```
export NAME="my_name"
export EMAIL="my_email"
sed -i "s/\<NAME\>/$NAME/g" .gitconfig
sed -i "s/\<EMAIL\>/$EMAIL/g" .gitconfig
```
install vim-plug:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
install clang-format:
```
sudo apt install clang-format
find / -name clang-format.py 2>/dev/null | head -1 | xargs -I @ sed -i "s#CLANG_FORMAT_PY#@#" .vim/.clang_format.vim
```
apply config:
```
mkdir -p ~/config_dump
(cd ~ && cp -r .bashrc .tmux.conf .vimrc .vim/ .ssh/ config_dump/)
cp -r .bashrc .tmux.conf .vimrc .vim/ .ssh/ ~/
```
