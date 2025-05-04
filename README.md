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

A thesis template for National Taipei University of Technology (NTUT) based on XeLaTeX.

If you like it, click the star at the top right.
<svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="octicon octicon-star-fill starred-button-icon d-inline-block mr-2">
    <path fill="#FFD700" d="M8 .25a.75.75 0 0 1 .673.418l1.882 3.815 4.21.612a.75.75 0 0 1 .416 1.279l-3.046 2.97.719 4.192a.751.751 0 0 1-1.088.791L8 12.347l-3.766 1.98a.75.75 0 0 1-1.088-.79l.72-4.194L.818 6.374a.75.75 0 0 1 .416-1.28l4.21-.611L7.327.668A.75.75 0 0 1 8 .25Z"></path>
</svg>

</div>

## Quick Start

This template supports both Chinese and English thesis writing. However, some formatting settings may differ from the official Word template provided by the school. Please consult with your department before using this template.

This guide includes instructions for environment setup and usage.  
We also provide an Overleaf version to reduce configuration differences between platforms.

### Environment Setup

Choose one of the following methods:

#### Overleaf

[Open Template]()

##### Compiler

Before compiling, please make sure XeLaTeX is selected:

1. Open your project
2. Click the “Menu” button in the top-left corner
3. In the sidebar, find “Compiler”
4. Change the compiler from `pdfLaTeX` to `XeLaTeX`
5. Close the menu

Then click “Recompile”.

#### texlive Installation

You need `texlive` to compile `.tex` files.

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

#### Compile .tex Files

```bash
xelatex main
bibtex main
xelatex main
```

### Usage Instructions

- Modify parameters in `./labels/labels.tex`, such as department, title, degree, and student name.
- Store static resources like images, icons, and media files in the `./assets` folder.
    - Images can be placed in `./assets/figures`, which is set as the default path, so you can reference images by filename directly.
- Add references in `./bib/references.bib`
- Edit your chapters in `./chapter`, and manage their order in `./chapter/_chapter-manager.tex`
- Replace the following files as required:
    - `./static-page/spine.pdf` (book spine)
    - `./static-page/oral-defense-verification.pdf` (oral defense approval form)

You do not need to modify other files to compile your thesis.

## File Structure

```
├── assets
│   └── figures
│       └── image.jpeg
├── bib
│   └── references.bib
├── chapter
│   ├── _chapter-manager.tex
│   ├── chapter1-introduction.tex
│   └── chapter2-related-work.tex
├── labels
│   └── labels.tex
├── logo
│   ├── ntut-logo-with-label.png
│   └── ntut-logo.png
├── page
│   ├── abstract-en.tex
│   ├── abstract.tex
│   ├── blankpage.tex
│   ├── reference.tex
│   ├── table-of-content.tex
│   ├── acknowledgments.tex
│   └── titlepage.tex
├── static-page
│   ├── oral-defense-verification.pdf
│   └── spine.pdf
├── sty
│   ├── basic-utils.sty
│   ├── layout.sty
│   └── renewcommands.sty
├── ntut-reports.cls
└── main.tex
```

## TODO

On macOS or Linux, the font `標楷體` may not be available. You will need to modify the font setting in `./sty/layout.sty`.

Overleaf support is not yet officially released. Please manually import this project into Overleaf for now.

## Acknowledgements

Special thanks to:

- Prof. Chin-Yu Sun, Department of Computer Science and Information Engineering, NTUT  
- Prof. Yu-Chi Chen, Department of Computer Science and Information Engineering, NTUT

Thank you for your guidance and support!
