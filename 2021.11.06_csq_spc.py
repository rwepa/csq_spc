"""
title   : 中華民國品質學會第57屆年會暨2021國際品質管理研討會
subtitle: 論壇：開源AI品質工具－統計品管與實務應用
Date    : 2020.11.6
author  : Ming-Chang Lee
email   : alan9956@gmail.com
RWEPA   : http://rwepa.blogspot.tw/
GitHub  : https://github.com/rwepa
File    : 2021.11.06_csq_spc.py
"""

# 方法1 scipy -one-way anova
# https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.f_oneway.html

from scipy.stats import f_oneway

w160 = [575, 542, 530, 539, 570]
w180 = [565, 593, 590, 579, 610]
w200 = [600, 651, 610, 637, 629]
w220 = [725, 700, 715, 685, 710]

rf = f_oneway(w160, w180, w200, w220)
rf
type(rf)

rf.statistic     # 66.79707321945864
rf.pvalue        # 2.882865908493268e-09
rf.pvalue < 0.05 # True, Do not accept H0, 不同RF功率(X)的蝕刻率(Y)不全相同

# 方法2 statsmodels.formula.api.ols
# https://www.statsmodels.org/dev/generated/statsmodels.formula.api.ols.html

import statsmodels.api as sm
from statsmodels.formula.api import ols
import pandas as pd

df = pd.read_excel(io = 'C:/rdata/rf.xlsx', sheet_name = 'rf')
df.head(n=3)

mod = ols('etchrate ~ rf', data = df).fit()               
aov_table = sm.stats.anova_lm(mod, typ=2)
print(aov_table)
# end