# RMBaseModel
model基类与字典中嵌套数组Model的处理方法


RMBaseModel ：Model基类

1. 实现字典与model之间的转化
2. 实现Model的description

RMFirstModel

1. 继承自RMBaseModel
2. 处理字典中嵌套数组的问题 得到 Model中嵌套Model数组 方便后面的数据处理



平时的Model只需继承自RMBaseModel，不需要每次都去实现字典与Model的转化方法
也可以省去MJExtension这样的第三方库的占用资源，减少安装包大小

