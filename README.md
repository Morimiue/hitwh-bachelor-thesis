# Hithesis 威海本科毕业论文修改版

本项目为毕业设计过程中对 hithesis 的一些修改与功能新增，因为时间原因暂时来不急合并到上游仓库中，因此临时创建一个仓库存放代码。

## 使用方式

clone 或下载项目代码，并根据模版修改项目内 tex 文件即可使用。推荐使用 vscode + latex workshop 进行编写。

如果你已有 tex 项目，可以将本项目的 `cls` `cfg` 文件软链接至自己的项目中，并随时拉取最新更新，即可享受滚动更新 ~~爆炸~~ 的快感。

## 修改内容

- 修正了目录，图题间距的格式问题
- 添加了 vscode + latex workshop 的相关配置，能够在编译完成后自动刷新 PDF，开箱即用
- 添加了 pandoc 导出 word 的格式模版，别问我为什么要加这个（（（

## pandoc 使用说明（希望别用到）

requirements：`pandoc` 和 `pandoc-crossref`

需要安装对应 pandoc 版本的 pandoc-crossref，一般都下载最新版就没问题。随后将二者放入 PATH。

在 tex 项目文件夹运行 `export_word.sh`，即可在目录下找到 `output.docx` 导出文件。windows 用户可以运行以下命令：

```cmd
pandoc thesis.tex -F pandoc-crossref --citeproc -o output.docx -w docx --pdf-engine xelatex -M "crossrefYaml=pandoc/pandoc-crossref-es.yaml" -M "reference-section-title=参考文献" --bibliography=reference.bib --csl pandoc/pandoc_gb7714-2005.csl --reference-doc pandoc/ref.docx --top-level-division=chapter --number-sections
```
