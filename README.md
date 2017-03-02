# coj-judge
[COJ](https://coj.cqut.edu.cn)的判题程序，从 [https://github.com/zhblue/hustoj](https://github.com/zhblue/hustoj) Fork下来的。

## 功能
自动从数据库扫描或从Redis队列中读取需要判题的任务，进行判断，并返回结果。

## 运行
这个模块可以单独运行，只需要设置好`judge.conf`配置文件，就可以单独在容器或机器上运行。
如果使用Docker，请配置Volume，`<host-data-path>:/home/judge/data`。

> 欢迎加入一起开发。