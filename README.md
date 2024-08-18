# hvigor_plugin_template

hvigor plugin template

### 开发

1、初始化和打包

```
# 安装依赖
npm install

# 打包
npm pack
```

2、在 hvigor\hvigor-config.json5 添加如下配置

```
"dependencies": {
    "@zengjing/hvigor_demo_plugin": "file:../dependencies/hvigor_demo_plugin-0.1.0.tgz"
}
```

- 方式1：执行编辑区右上角Install Now或执行菜单File -> Sync and Refresh Project进行工程Sync后，DevEco Studio将会根据hvigor-config.json5中的依赖配置自动安装。

- 方式2：执行 hvigorw --sync 命令

3、在 hvigorfile.ts 中导入插件

```
import { customPlugin } from '@zengjing/hvigor_demo_plugin';

export default {
    system: appTasks,
    plugins:[
        customPlugin()
    ]
}
```