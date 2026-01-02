# Android APK 构建指南

## 使用 Cordova 打包 APK

### 1. 安装 Node.js
下载并安装: https://nodejs.org/

### 2. 安装 Cordova
```bash
npm install -g cordova
```

### 3. 创建项目
```bash
# 在 d:\zhipu\cal 目录下执行
cordova create calculator com.example.calculator Calculator
cd calculator
```

### 4. 添加 Android 平台
```bash
cordova platform add android
```

### 5. 复制文件
将 calculator.html 复制到 `calculator/www/index.html`

### 6. 构建 APK
```bash
cordova build android
```

生成的 APK 在: `platforms/android/app/build/outputs/apk/`

---

## 推荐方案: PWA

**最简单的方法:**

1. 上传 calculator.html 到:
   - GitHub Pages
   - Vercel (https://vercel.com)
   - Netlify (https://netlify.com)

2. 手机浏览器打开网页

3. Chrome: 菜单 → "添加到主屏幕"
   Safari: 分享按钮 → "添加到主屏幕"

4. 完成！应用图标会出现在主屏幕
