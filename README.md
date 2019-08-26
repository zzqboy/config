vim config， donot repeat yourself

# 安装
```
wget http://beyondgrep.com/ack-2.12-single-file
sudo mv ack-2.12-single-file /usr/bin/ack
sudo chmod 0755 /usr/bin/ack
```
```sh
git clone git@github.com:zzqboy/config.git
cd config/vim
./config.sh
```

# 插件
## minibuffexplorer
打开多个文件时自动出现上方，使用`:bn`来打开，n为编号

## nerdtree
`<C-n>`打开目录树，o打开文件，`<C-w>`切换窗口

## ctag
在目录下执行`ctags -R *`， `ctrl-]` 跳转到定义处，`ctrl-o` 返回

## taglist
`:TlistToggle` or `ctrl-t`

## omnicppcomplete
补全 `<ctrl-x><ctrl-o>`

效果:  
![v](vim/shoot.jpg)  
