# 验证使用rust的一些可行性

1. 如何使用python2调用rust实现的逻辑
2. 如何实现rust逻辑热更


# 测试
## 执行   
```sh run.sh```

## 输出：   
```
test begin
load v1 to mylib
('check lib version:', 'I am v1')

reload v2 to mylib
('check lib version:', 'I am v2')
test end
```

# 结论：
1. rust逻辑可以生成so库
2. python2可以调用该库
3. 可以热更该库

# 前置条件
1. 已安装docker