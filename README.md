# 这是在 manjaro 下的 nvim 配置

关于安装过程

导入配置文件之后，需要先安装 vim-plug 这一步需要在终端里进行

用 vim-plug 安装插件

coc 需要安装 nodejs

markdownPreview 下载之后需要在 vim 中
`:call mkdp#util#install()`

在最新的版本中，从 `clangd` 切换到 `ccls`。
所以要安装 `ccls`

## 使用要求

默认使用 cmake 进行编译 C 语言
