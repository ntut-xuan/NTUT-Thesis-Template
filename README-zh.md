<div align="right">

[![](https://img.shields.io/badge/license-MIT-green)](./LICENSE)

</div>

<!-- Logo -->
<p align="center">
    <img src="https://sec.ntut.edu.tw/var/file/27/1027/img/920/916415378.jpg" alt="NTUT" height="150px">
</p>

</div>

<!-- Title and Description -->
<div align="center">

# NTUT-Thesis-Template

![](https://img.shields.io/badge/LaTeX%202%CE%B5-3.14159265-blueviolet?logo=latex&style=flat-square)
<br>
![](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg?style=flat-square)
[![](https://img.shields.io/badge/Overleaf%20-Open%20as%20Template-46a247?logo=overleaf&style=flat-square)]()

*Language Options: [English](README.md), [繁體中文](README-zh-TW.md), [简体中文](README-zh.md)*

基于 XeLaTeX 的北科论文模板。

喜欢的话就点个右上角的星星
<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-star-fill starred-button-icon d-inline-block mr-2">
    <path fill="#FFD700" d="M8 .25a.75.75 0 0 1 .673.418l1.882 3.815 4.21.612a.75.75 0 0 1 .416 1.279l-3.046 2.97.719 4.192a.751.751 0 0 1-1.088.791L8 12.347l-3.766 1.98a.75.75 0 0 1-1.088-.79l.72-4.194L.818 6.374a.75.75 0 0 1 .416-1.28l4.21-.611L7.327.668A.75.75 0 0 1 8 .25Z"></path>
</svg>

</div>

## 快速入门

此模板适用于中文与英文论文撰写，但其部分版面设定可能与学校提供的 Word 模板有所不同，建议与相关承办人确认后才使用。

本教学涵盖环境建置与使用说明。
针对环境建置部分，我们另外提供 Overleaf 模板，以降低不同装置间的设定差异所造成的影响。

### 环境建立

以下方法中，选择其中一个即可

#### Overleaf

[开启模板]()

##### 编译

编译前请先确认选择 XeLaTeX 作为编译选项，步骤如下：

1. 打开您的专案
2. 点击左上角的「Menu」按钮
3. 在弹出的侧边栏中找到 Compiler
4. 将 Compiler 选项从 pdfLaTeX 改成 XeLaTeX
5. 关闭选单

之后您就可以点击「Recompile」重新编译。

#### texlive 安装

您需要 `texlive` 来开始编译 `.tex` 档案。

##### macOS

```bash
brew install texlive
```

##### Ubuntu

```bash
sudo apt-get update
sudo apt-get install texlive-full
```

##### Fedora

```bash
sudo dnf update
sudo dnf install texlive-scheme-full
```

#### 编译 .tex 档案

```bash
xelatex main
bibtex main
xelatex main
```

### 使用说明

- 您可以在 `./labels/labels.tex` 进行参数的设定，例如：科系、论文名称、学位、研究生等。
- 您可以在 `./assets` 资料夹中存放您的静态资源，例如图片（.png、.jpg）、图示（.svg）、音效档（.mp3、.wav）以及其他媒体档案。 
    - 其中的 `./assets/figures` 已经设定为预设的图片路径，您可以在编辑内容时直接用档名引入而无须指定路径。
- 您可以在 `./bib/references.bib` 加入您的参考文献
- 您可以在 `./chapter` 进行主要内容的编辑，然后用 `./chapter/_chapter-manager.tex` 管理内容的顺序
- 您需要自行准备以下文件，并以指定路径覆盖档案:
    - "书背": `./static-page/spine.pdf`
    - "学位论文口试委员会审定书": `./static-page/oral-defense-verification.pdf`

除上述提及的档案与路径，您不需要理会其他文件，就可以编译出您的论文。

## 档案架构

```
├── assets
│   └── figures <-------------------------- 图片目录
│       └── image.jpeg <------------------- 范例图片
├── bib
│   └── references.bib <------------------- 参考文献 bib 档
├── chapter
│   ├── _chapter-manager.tex <------------- 章节管理员
│   ├── chapter1-introduction.tex <-------- 范例章节一
│   └── chapter2-related-work.tex <-------- 范例章节二
├── labels
│   └── labels.tex <----------------------- 标签设定
├── logo
│   ├── ntut-logo-with-label.png <--------- Logo
│   └── ntut-logo.png <-------------------- Logo
├── page
│   ├── abstract-en.tex <------------------ 英文摘要
│   ├── abstract.tex <--------------------- 中文摘要
│   ├── blankpage.tex <-------------------- 空白页
│   ├── reference.tex <-------------------- 参考文献
│   ├── table-of-content.tex <------------- 目录
│   ├── acknowledgments.tex <-------------- 致谢
│   └── titlepage.tex <-------------------- 首页
├── static-page
│   ├── oral-defense-verification.pdf <---- 「学位论文口试委员会审定书」扫描档
│   └── spine.pdf <------------------------ 书背
├── sty
│   ├── basic-utils.sty <------------------ 基本工具
│   ├── layout.sty <----------------------- 版面设定
│   └── renewcommands.sty <---------------- 针对不同 labels 重新定义命令
├── ntut-reports.cls <--------------------- LaTeX 样式
└── main.tex <----------------------------- 主要文件
```

## TODO

在 macOS 或 Linux 上似乎没有标楷体，因此要麻烦您在 `./sty/layout.sty` 中修改字体的档案。

目前还没正式发布 Overleaf，在正式发布以前，麻烦用户自行将该项目汇入 Overleaf 专案内。

## 特别感谢

这份专案的存在，得特别感谢：

- 国立台北科技大学 资讯工程系 孙勤昱老师
- 国立台北科技大学 资讯工程系 陈昱圻老师

感谢两位老师给予机会与协助！
