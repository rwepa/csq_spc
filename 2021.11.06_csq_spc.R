# title   : 中華民國品質學會第57屆年會暨2021國際品質管理研討會
# subtitle: 論壇：開源AI品質工具－統計品管與實務應用
# Date    : 2020.11.6
# author  : Ming-Chang Lee
# email   : alan9956@gmail.com
# RWEPA   : http://rwepa.blogspot.tw/
# GitHub  : https://github.com/rwepa
# File    : 2021.11.06_csq_spc.R

# 大綱 -----
# 1.Python 實作DoE常用的分析方法
# 2.Shiny 套件簡介
# 3.互動式統計品管網頁實作
# 4.Q & A

# 資料分析的心法 -----
# APC方法
# 1.群組
# 2.時間
# 3.建立評估變數

# 資料分析與視覺化應用 ----

# 2020新型冠狀病毒視覺化
# http://rwepa.blogspot.com/2020/02/2019nCoV.html 

# shiny 顧客連接分析
# https://rwepa.shinyapps.io/shinyCustomerConnect/

# R入門資料分析與視覺化應用教學(付費)
# https://mastertalks.tw/products/r?ref=MCLEE

# R商業預測與應用(付費)
# https://mastertalks.tw/products/r-2?ref=MCLEE

# 1.Python 實作DoE常用的分析方法 -----
# Anaconda
# Spyder
# refer to materials
# refer to 2021.11.06_csq_spc.py

# 2.Shiny 套件簡介 -----

# R下載與安裝 -----
# http://www.r-project.org/

# 安裝參考說明, 2006
# https://github.com/rwepa/DataDemo/blob/master/windows_intall_R.pdf

# Rtools下載與安裝 -----
# https://cran.csie.ntu.edu.tw/bin/windows/Rtools/
# 一定要保留原路徑 C:\rtools40
# 2個選項都要打勾

# R 視覺化 -----
demo(graphics)
demo(persp)

# R for Mac -----
# https://youtu.be/72MYRBNo5Bk

# R for Ubuntu -----
# http://rwepa.blogspot.tw/2013/05/ubuntu-r.html

# RStudio 下載 -----
# http://www.rstudio.com/

# RStudio-選項設定 -----
# Tools\Global Options
# Code \ Saving \ Default text encoding: Change: UTF-8

# 基礎互動式shiny -----

# https://shiny.rstudio.com/

# https://www.rstudio.com/resources/webinars/

# 自動安裝套件 -----
usedpackages <- c("shiny", "ggplot2")

verify.packages <- function(need.packages) {
  for (x in need.packages) {
    if (!x %in% installed.packages()[,"Package"])
      install.packages(x)
  }
}
verify.packages(usedpackages)

# Shiny 參考資料-Get Started
# http://shiny.rstudio.com/tutorial/

# Shiny 參考資料-Articles
# https://shiny.rstudio.com/articles/

# shiny 內建範例資料 -----
library(shiny)

# 顯示內建11個範例
dir(paste0(.libPaths(), "/shiny/examples"))

# shiny example - 01_hello
runExample("01_hello")

runExample("02_text")

runExample("03_reactivity")

# 輸入控制項 -----

# selectInput 下拉式選單
?selectInput

# selectInput 下拉式選單:如果資料有很多筆,可使用list物件

# 輸出控制項-文字/表報 -----

# render函數對照表
# *Output (ui.R)
ls("package:shiny", pattern="Output$") # 9個

# render* (server.R)
ls("package:shiny", pattern="^render") # 8個

# 版面配置 -----
# https://shiny.rstudio.com/articles/layout-guide.html

# 1.側邊佈局           Sidebar Layout
# 2.網格佈局           Grid Layout
# 3.分頁佈局           Tabsets Layout
# 4.瀏覽選單佈局       Navbar Pages
# 5.瀏覽下拉式選單佈局 Navbar Menu

# shiny 範例 - shinyCurve -----

# 展示 https://rwepa.shinyapps.io/shinyCurve/

# 程式碼 https://github.com/rwepa/DataDemo/tree/master/shinyCurve

# 3.互動式統計品管網頁實作 -----

# http://rwepa.blogspot.com/2021/10/r-shiny-quality-control-chart.html

# R程式碼下載 https://github.com/rwepa/shiny_spc

# 線上示範 https://rwepa.shinyapps.io/shiny_spc/
 
# 參考資料 -----

# RWEPA
# http://rwepa.blogspot.com/

# iPAS-R-tutorial(繪圖中文字型solved)
# https://github.com/rwepa/DataDemo/blob/master/aMarvelousR_Lee(pp238).R

# Python 程式設計-李明昌 <免費電子書>
# http://rwepa.blogspot.com/2020/02/pythonprogramminglee.html 

# R入門資料分析與視覺化應用教學(付費)
# https://mastertalks.tw/products/r?ref=MCLEE

# R商業預測與應用(付費)
# https://mastertalks.tw/products/r-2?ref=MCLEE 

# end
# 謝謝您的聆聽 , Q & A