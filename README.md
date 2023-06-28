# 课程准备

准备课程用到的几个脚本

## 使用方法

首先下载树莓派映像，然后按照如下过程使用：

```console
$ unxz xxx.xz  # 解压映像
$ ./prepare_img.sh xxx.img # 挂载映像分区，并复制必要文件
$ ./chroot.sh xxx.img      # 可以进入到目标文件系统中
$ /root/install.sh         # 安装必要的软件
$ ./flash.sh xxx.img       # 写入到 sd 卡中
```

## 配置过程

主要设置基本工作环境，缺省用户名选择为 student，使用 root 用户运行 post\_install.sh 完成。配置接口时需要允许 SSH、SPI、I2C、1-Wire。
