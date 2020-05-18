# Ant Design 实战教程

- [Ant Design 实战教程](#ant-design-%e5%ae%9e%e6%88%98%e6%95%99%e7%a8%8b)
    - [错误一：Path must be a string](#%e9%94%99%e8%af%af%e4%b8%80path-must-be-a-string)
    - [错误二：Module not found: Can't resolve 'umi/link'](#%e9%94%99%e8%af%af%e4%ba%8cmodule-not-found-cant-resolve-umilink)


### 错误一：Path must be a string

出现这个错误的原因是`umi`插件版本与`umi`的版本有冲突，`umi3`已经对原来的插件进行了更新，解决办法 [Upgrade to Umi 3](https://umijs.org/docs/upgrade-to-umi-3#%E5%8D%87%E7%BA%A7-umi-plugin-react-%E4%B8%BA-umijspreset-react)

package.json 修改
```
{
  "devDependencies": {
-   "umi-plugin-react": "^1"
+   "@umijs/preset-react": "^1"
  }
}

```

config.js 修改

```
export default {
- plugins: [
-   ['umi-plugin-react', {
-     dva: {},
-     antd: {},
-     ...
-   }]
- ],
+ dva: {},
+ antd: {},
+ ...
}
```

### 错误二：Module not found: Can't resolve 'umi/link'

`src/layout/index.js` 中引入方式变为
```
import { Link } from 'umi'
```