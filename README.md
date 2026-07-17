# 治愈贪吃蛇 · 暖心之旅 🐍

一场温柔又治愈的贪吃蛇冒险游戏，5个递进难度关卡，温暖治愈系风格。

## 项目结构
```
snake-game/
├── index.html       # 完整游戏（HTML + CSS + JS 全部整合）
├── README.md        # 本文档
├── deploy.ps1       # GitHub Pages 一键部署脚本
└── assets/          # （可选）放置蛇头/蛇身图片
```

## 快速开始
直接双击打开 `index.html` 即可运行，无需任何服务器环境。

## 游戏特点
- 🎮 5个递进关卡：从新手到大师的自然成长曲线
- 🌟 星级评价：根据通关时间获得1-3星评价
- 🎵 内置音效：优雅温暖的Web Audio合成音效（无需外部文件）
- 🌙 日夜模式：一键切换日间/夜间主题
- 📱 双端适配：桌面键盘 + 移动触控完美支持
- 💾 自动存档：通关进度、星级、名人堂自动保存
- 🏆 名人堂：通关全部关卡后留下你的名字
- 🐍 蛇图替换：预留蛇头/蛇身图片替换接口，支持透明PNG

## 关卡介绍
| 关卡 | 名称 | 速度 | 障碍 | 目标食物 |
|------|------|------|------|---------|
| 第1关 | 初次相遇 | 慢速 | 无 | 5 |
| 第2关 | 渐入佳境 | 中慢速 | 少量 | 8 |
| 第3关 | 勇往直前 | 中速 | 较多 | 10 |
| 第4关 | 高手之路 | 快速 | 复杂迷宫 | 12 |
| 第5关 | 终极挑战 | 极速 | 密集+移动障碍 | 15 |

## 如何替换蛇的图片
打开 `index.html`，找到文件开头的 `SNAKE IMAGE CONFIGURATION` 部分，修改：
```javascript
const SNAKE_HEAD_IMAGE = 'assets/snake-head.png';
const SNAKE_BODY_IMAGE = 'assets/snake-body.png';
```
支持透明底PNG图片，图片会自动适应游戏网格大小。

## 如何修改游戏速度与难度
找到JavaScript中 `SPEED_CONFIG`、`FOOD_TARGET`、`PAR_TIME` 三个数组调整：
```javascript
const SPEED_CONFIG = [200, 160, 120, 90, 60]; // 毫秒/步，越小越快
const FOOD_TARGET = [5, 8, 10, 12, 15];       // 每关需要吃掉的食物数量
const PAR_TIME = [20, 25, 30, 35, 40];         // 三星标准时间（秒）
```

## 部署到 GitHub Pages

### 方法一：使用部署脚本
```powershell
cd snake-game
.\deploy.ps1
```

### 方法二：手动部署
1. 在 GitHub 创建新仓库 `snake-game`
2. 将文件推送到 `main` 分支
3. 仓库 Settings → Pages → 选择 main 分支 → 保存
4. 访问 `https://Yibo6627.github.io/snake-game`

## 技术栈
- 纯前端：HTML5 + CSS3 + Vanilla JavaScript
- 游戏渲染：Canvas 2D
- 音效：Web Audio API（程序合成，零外部依赖）
- 存储：localStorage

## 额外功能
- ✨ 食物脉冲发光 + 吃掉粒子特效
- 🌀 蛇身光影渐变 + 身体花纹
- 🌈 蛇头可爱眼睛 + 分叉舌头动画
- 🎊 通关五彩纸屑庆祝动画
- 🎯 会动的障碍物（第5关）
- 🏆 名人堂记录系统