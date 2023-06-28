# 课程准备

准备课程用到的几个脚本，首先下载树莓派映像，然后安装过程如下：

```console
$ unxz xxx.xz  # 解压映像
$ ./prepare_img.sh xxx.img # 挂载映像分区，并复制必要文件
$ ./flash.sh xxx.img
```

配置好树莓派之后，运行 install.sh 完成最后安装
