# Corkscrew

这是一个试验性项目，出发点是在使用ssh登陆系统的时候，提示当前的系统基本信息，并提示当前软件包是否存在安全漏洞（待更新）

目前还没有做OS适配，仅在CentOS 7中进行了测试，针对macOS系统因为/proc目录并不存在，像负载这些存放在别的地方，也是之后更新的方向

由于安全与否的识别机制只能依靠CVE，对于未上报的漏洞如果有发现且未有CVE也会尝试性的告知，但本着白帽子公约的准则，该部分提示将仅限于内网机器，外部机器不进行提醒

之后的更新重点是实现对CVE的检测，暂时还没想好怎么做

配置很简单，把脚本的绝对路径和脚本名字写进/etc/profile最后一行就行，下次登陆的时候就自动运行了

卸载更方便，删除主目录，清除/etc/profile对应行即可

## TODO

- [ ] 进行OS的适配
- [ ] 尝试识别CVE并对比当前软件包做到安全漏洞提醒
- [ ] 尝试使用crontab或者守护进程的方式避免进程被恶意清除

