# NTUT-Thesis-Template

基於 XeLaTeX 的北科論文模板。

## 快速入門

你需要 `texlive` 來開始編譯 `.tex` 檔案。

```bash
xelatex main
bibtex main
xelatex main
```

## 檔案架構

你可以隨意新增自己的章節，以及修改中文與英文 abstract 的頁數與關鍵字。

```
./chapter
├── chapter1-introduction.tex <---- 章節一
└── chapter2-related-work.tex <---- 章節二
./page
├── abstract-en.tex <-------------- 英文 abstract
├── abstract.tex <----------------- 中文 abstract
├── blankpage.tex <---------------- 空白頁
├── reference.tex <---------------- 參考文獻
├── table-of-content.tex <--------- 各式各樣的目錄
├── thanks.tex <------------------- 致謝
└── titlepage.tex <---------------- 首頁
```