---
layout: post
title: Linux文件中的三种time
# subtitle: Each post also has a subtitle
# gh-repo: daattali/beautiful-jekyll
# gh-badge: [star, fork, follow]
tags: [Linux, 知识点]
comments: false
---

使用`ls -l 文件名`命令可以查看一个文件的详细属性信息。其中包括了一个时间戳。

![image-20210315184850922](https://gitee.com/liang_qi/bolg-image/raw/master/img/image-20210315184850922.png)

这个时间戳表示了上一次本文件的**内容数据**变更的时间。

事实上，Linux中每个文件包含了三个时间戳，可通过`stat 文件名`查看。

![image-20210315185101743](https://gitee.com/liang_qi/bolg-image/raw/master/img/image-20210315185101743.png)

按照首字母，可以称它们为：atime、mtime、ctime。

其意义分别为：

|   atime   |  文件的内容上次被访问的时间  |
| :-------: | :--------------------------: |
| **mtime** |  **文件内容上次更改的时间**  |
| **ctime** | **文件的状态上次改变的时间** |

其中，文件的内容指的是文件中的内容数据；而文件的状态则指文件的属性（如所属组、文件的权限等）。二者需要进行区分。

在`ls -l 文件名`中，所查看到的为文件的`mtime`，对于另外两种时间，也可使用`ls`命令来进行查看，分别为：

```shell
# 查看atime
ls -l --time=atime 文件名
# 查看ctime
ls -l --time=ctime 文件名
```

