# NTUT-Thesis-Template

基於 XeLaTeX 的北科論文模板。

喜歡的話就點個右上角的星星：）

## 快速入門

### texlive 安裝

你需要 `texlive` 來開始編譯 `.tex` 檔案。

#### macOS

```
brew install texlive
```

### Ubuntu
```
sudo apt-get update
sudo apt-get install texlive-full
```

### 設定文件參數與字體

你可以在 `ntut-labels.tex` 進行參數的設定，例如：科系、論文名稱、學位、研究生等。

另外，你需要額外修改兩處：

- 在 `page/abstract.tex` 與 `page/abstract-en.tex` 中，你需要在此撰寫您的論文頁數與關鍵字。
- 在 `main.tex` 中，你可能需要修改字體的檔案，例如在 macOS 或 Linux 上似乎沒有標楷體。

### 編譯 .tex 檔案

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

## 特別感謝

這份專案的存在，得特別感謝：

- 國立臺北科技大學 資訊工程系 孫勤昱老師
- 國立臺北科技大學 資訊工程系 陳昱圻老師

感謝兩位老師給予機會與協助！