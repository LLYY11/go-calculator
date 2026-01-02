# 构建计算器 APK 指南

## 🚀 最简单方案：使用 PWABuilder（推荐）

### 步骤：

1. **上传到 GitHub Pages**
   - 访问：https://github.com/LLYY11/go-calculator/settings/pages
   - Source: Deploy from a branch
   - Branch: main
   - Folder: / (root)
   - 点击 Save

2. **等待部署完成**（约 2-3 分钟）
   - 访问：https://llyy11.github.io/go-calculator/
   - 确认计算器可以正常使用

3. **使用 PWABuilder 打包 APK**
   - 访问：https://www.pwabuilder.com/
   - 输入你的网址：https://llyy11.github.io/go-calculator/
   - 点击 "Start"
   - 选择 "Android"
   - 点击 "Package for Android"
   - 下载生成的 APK

4. **安装到手机**
   - 将 APK 传输到 Android 手机
   - 允许安装未知来源应用
   - 打开 APK 安装

---

## 💻 方案 2：本地使用 Cordova 构建

需要安装 Node.js 和 Android SDK

### 1. 安装依赖
```bash
npm install -g cordova
npm install -g cordova-android
```

### 2. 创建项目
```bash
# 创建 cordova 项目
cordova create calculator-app com.calculator.app Calculator

cd calculator-app

# 添加 Android 平台
cordova platform add android
```

### 3. 复制文件
将 calculator.html 复制到 `calculator-app/www/index.html`

### 4. 构建 APK
```bash
# Debug 版本
cordova build android

# Release 版本（需要签名）
cordova build android --release
```

APK 位置：`platforms/android/app/build/outputs/apk/`

---

## 🌐 方案 3：使用在线工具

### Website 2 APK
- 网址：https://website2apk.com/
- 输入 URL 或上传 HTML 文件
- 生成 APK

### Web2Apk
- 网址：https://www.web2apk.com/
- 支持更多自定义选项

---

## ✅ 推荐

**使用 PWABuilder**，因为：
- ✅ 无需安装任何工具
- ✅ 完全在线操作
- ✅ 生成的 APK 质量好
- ✅ 支持 PWA 特性
- ✅ 免费使用

---

## 📱 当前状态

你的项目已经准备好打包了：
- ✅ calculator.html 已完成
- ✅ PWA meta 标签已添加
- ✅ 移动端优化完成
- ✅ 已上传到 GitHub

下一步：启用 GitHub Pages，然后使用 PWABuilder 打包 APK。
