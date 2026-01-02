# 🔢 计算器项目

一个使用 Go 语言开发的计算器项目，包含命令行版本和网页版本。

## 项目内容

### 1. 命令行计算器
**文件:** [calculator.go](calculator.go)

简单的命令行计算器，支持基本四则运算。

**运行:**
```bash
go run calculator.go
# 或
calculator.exe
```

**使用示例:**
```
10 + 20
5 * 6
3.14 * 2
```

---

### 2. 网页版计算器
**文件:** [web_calculator.go](web_calculator.go)

Windows 风格的网页计算器，带完整交互界面。

**运行:**
```bash
go run web_calculator.go
# 或
web_calculator.exe
```

然后访问: http://localhost:8080

**特点:**
- 🖥️ Windows 计算器风格的深色主题
- ⌨️ 完整键盘支持
- 📱 响应式设计
- 🎨 按钮高亮和悬停效果

---

### 3. 纯静态 HTML 计算器
**文件:** [calculator.html](calculator.html)

无需后端的纯静态计算器，可以直接在浏览器中打开。

**使用:**
直接双击 `calculator.html` 文件，或在浏览器中打开。

**特点:**
- ✅ 无需任何后端
- ✅ 支持移动端
- ✅ PWA 支持（可添加到主屏幕）
- ✅ 离线可用

---

## 构建可执行文件

### Windows
```bash
go build -o calculator.exe calculator.go
go build -o web_calculator.exe web_calculator.go
```

### 减小文件大小
```bash
go build -ldflags "-s -w" -o calculator.exe calculator.go
```

---

## 在线体验

将 `calculator.html` 上传到以下任意平台即可在线使用:
- GitHub Pages
- Vercel
- Netlify

然后在手机浏览器中打开，添加到主屏幕即可像原生应用一样使用。

---

## 技术栈

- **后端:** Go (net/http)
- **前端:** HTML + CSS + JavaScript
- **部署:** 支持静态托管

---

## 许可证

MIT License
