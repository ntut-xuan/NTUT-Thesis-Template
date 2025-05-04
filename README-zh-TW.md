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

基於 XeLaTeX 的北科論文模板。

喜歡的話就點個右上角的星星
<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-star-fill starred-button-icon d-inline-block mr-2">
    <path fill="#FFD700" d="M8 .25a.75.75 0 0 1 .673.418l1.882 3.815 4.21.612a.75.75 0 0 1 .416 1.279l-3.046 2.97.719 4.192a.751.751 0 0 1-1.088.791L8 12.347l-3.766 1.98a.75.75 0 0 1-1.088-.79l.72-4.194L.818 6.374a.75.75 0 0 1 .416-1.28l4.21-.611L7.327.668A.75.75 0 0 1 8 .25Z"></path>
</svg>

</div>

## 快速入門

此模板適用於中文與英文論文撰寫，但其部分版面設定可能與學校提供的 Word 模板有所不同，建議與相關承辦人確認後才使用。

本教學涵蓋環境建置與使用說明。
針對環境建置部分，我們另外提供 Overleaf 模板，以降低不同裝置間的設定差異所造成的影響。

### 環境建立

以下方法中，選擇其中一個即可

#### Overleaf

[開啟模板]()

##### 編譯

編譯前請先確認選擇 XeLaTeX 作為編譯選項，步驟如下：

1. 打開您的專案
2. 點擊左上角的「Menu」按鈕
3. 在彈出的側邊欄中找到 Compiler
4. 將 Compiler 選項從 pdfLaTeX 改成 XeLaTeX
5. 關閉選單

之後您就可以點擊「Recompile」重新編譯。

#### texlive 安裝

您需要 `texlive` 來開始編譯 `.tex` 檔案。

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

#### 編譯 .tex 檔案

```bash
xelatex main
bibtex main
xelatex main
```

### 使用說明

- 您可以在 `./labels/labels.tex` 進行參數的設定，例如：科系、論文名稱、學位、研究生等。
- 您可以在 `./assets` 資料夾中存放您的靜態資源，例如圖片（.png、.jpg）、圖示（.svg）、音效檔（.mp3、.wav）以及其他媒體檔案。
    - 其中的 `./assets/figures` 已經設定為預設的圖片路徑，您可以在編輯內容時直接用檔名引入而無須指定路徑。
- 您可以在 `./bib/references.bib` 加入您的參考文獻
- 您可以在 `./chapter` 進行主要內容的編輯，然後用 `./chapter/_chapter-manager.tex` 管理內容的順序
- 您需要自行準備以下文件，並以指定路徑覆蓋檔案:
    - "書背": `./static-page/spine.pdf`
    - "學位論文口試委員會審定書": `./static-page/oral-defense-verification.pdf`

除上述提及的檔案與路徑，您不需要理會其他文件，就可以編譯出您的論文。

## 檔案架構

```
├── assets
│   └── figures <-------------------------- 圖片目錄
│       └── image.jpeg <------------------- 範例圖片
├── bib
│   └── references.bib <------------------- 參考文獻 bib 檔
├── chapter
│   ├── _chapter-manager.tex <------------- 章節管理員
│   ├── chapter1-introduction.tex <-------- 範例章節一
│   └── chapter2-related-work.tex <-------- 範例章節二
├── labels
│   └── labels.tex <----------------------- 標籤設定
├── logo
│   ├── ntut-logo-with-label.png <--------- Logo
│   └── ntut-logo.png <-------------------- Logo
├── page
│   ├── abstract-en.tex <------------------ 英文摘要
│   ├── abstract.tex <--------------------- 中文摘要
│   ├── blankpage.tex <-------------------- 空白頁
│   ├── reference.tex <-------------------- 參考文獻
│   ├── table-of-content.tex <------------- 目錄
│   ├── acknowledgments.tex <-------------- 致謝
│   └── titlepage.tex <-------------------- 首頁
├── static-page
│   ├── oral-defense-verification.pdf <---- 「學位論文口試委員會審定書」掃描檔
│   └── spine.pdf <------------------------ 書背
├── sty
│   ├── basic-utils.sty <------------------ 基本工具
│   ├── layout.sty <----------------------- 版面設定
│   └── renewcommands.sty <---------------- 針對不同 labels 重新定義命令
├── ntut-reports.cls <--------------------- LaTeX 樣式
└── main.tex <----------------------------- 主要文件
```

## TODO

在 macOS 或 Linux 上似乎沒有標楷體，因此要麻煩您在 `./sty/layout.sty` 中修改字體的檔案。

目前還沒正式發布 Overleaf，在正式發布以前，麻煩用戶自行將該項目匯入 Overleaf 專案內。

## 特別感謝

這份專案的存在，得特別感謝：

- 國立臺北科技大學 資訊工程系 孫勤昱老師
- 國立臺北科技大學 資訊工程系 陳昱圻老師

感謝兩位老師給予機會與協助！
