# transctpheaderfile
ctp头文件转换为pascal文件

之前写过一个类似的工具但是找不到了，参考海风的转换脚本写了个转换.pas

直接运行python run.py即可，生成的pas文件在pas文件文件夹下

如果需要转换其他版本的API，将新api文件夹拷贝到当前目录，然后修改run.py中的dir = './20230913_traderapi64_se_windows'
