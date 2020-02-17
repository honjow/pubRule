# Loon导入配置捷径

## 使用说明
本捷径是为 [Loon](https://apps.apple.com/us/app/loon/id1373567447) 编写的一键化懒人导入配置工具    
内置精简神机规则等策略组，满足基本分流需求
目前包含以下策略组
```
📌 手动切换
🎛 节点选择
♻️ 自动切换
🎬 YouTube 
📺 Netflix 
💻 国外影视
🌏 国外网站
📽 国内视频
🎧 网易解锁
🍎 苹果服务
```
**使用方式**
安装本捷径后运行, 按照提示输入你的机场订阅地址
订阅地址支持以下两种方式
1. 手动命名(自定义订阅名称)
```
🏀mySub1 = https://example/server-complete.txt
🛴mySubNew = https://example2/server-complete.txt
```
2. 自动命名(仅输入url,自动给订阅命名)
```
https://example/server-complete.txt
https://example2/server-complete.txt
```
即可自动生成配置文件,默认会保存在iCloud,也可以选择直接导入Loon(请注意备份原配置)
***
telegram: https://t.me/Loon0x00 


## 版本说明
版本: 0.1 (没错重置了)    
更新内容：   
1. 名字换了
2. 重构捷径逻辑，使用网络api获取部分菜单以及处理配置
3. 预设 **小白单策略，神机不含复写，神机复写** 三种分流策略选择。
4. 除小白单策略外，其余可选生成预设的国家地区自动策略组，可选`url-test`以及`fallback`或者**我全都要**

链接： [这里](https://www.icloud.com/shortcuts/e2ba7f660bee4d9da78990efc01f9f48)

## 历史更新：
版本：0.4    
更新内容：
1. 增加： 可直接使用上一次运行时输入的订阅地址
2. 增加： 捷径更新加入检测**是否必须更新**的机制，判断为是的话需要下载新版捷径后才能使用，否则可以跳过本版更新。    

链接： [这里](https://www.icloud.com/shortcuts/c4256c8538974f3fb708df26dbe04d10)
***
版本：0.3    
更新内容：
1. 增加一个默认的Netflix节点组, [📺 Netflix]策略组优先选择该节点组
2. 精简掉没必要的[🐟 漏网之鱼]策略组    

链接： [这里](https://www.icloud.com/shortcuts/1d2912a6332e4272a512a44cd83d4853)

***
版本：0.2    
更新内容：加入了检查捷径更新的机制     
链接： [这里](https://www.icloud.com/shortcuts/11e82ac3f4734945a2fad668d1f0adac)