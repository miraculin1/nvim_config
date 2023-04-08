configuration for neovim, test on linux, shoul working in windows

# 如何使用这个仓库？

将 `init.vim` 中的内容复制到你自己的 `init.vim`，然后访问
[vim-plug](https://github.com/junegunn/vim-plug) 按照其中
提到的方式安装 vim-plug。

_e.x. in linux_
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

接下来启动 nvim 在其中使用 `:PlugInstall` 安装所有用到的插件。

然后启动 `:Mason` 安装对应的 lsp 这样就可以使用 LSP 提供的转跳，
纠错等功能，也能搭配补全插件提供良好的补全体验。

总之这个配置使用了 nvim 新版本内置的 lsp 相关的功能。

解除之前配置中对 nodejs 的依赖，更多的使用了 lua (看起来我可以学学这个？)

- [ ] TODO: add more discrption about how to use
