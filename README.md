# dotfiles

Be sure to create symbolic links between these files and where they belong. For example:
- `ln -s /path/to/this/repo/.vimrc ~/.vimrc`

If you're using a terminal without 256 colors, add this to your ~/.bashrc:
- `TERM=xterm-256color`

After creating a symlink for the tmux conf file, run this command to tell tmux to use it:
- `tmux source-file ~/.tmux.conf`
