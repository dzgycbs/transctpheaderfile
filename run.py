#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'dzgycbs'
__mtime__ = '2026/06/01'
"""

import os

# 指定api目录
dir = './20230913_traderapi64_se_windows'


#转换ThostFtdcUserApiDataType.h
from generate_datatype_pas import Generate as dt_pas
dt_pas(dir).run()

#转换ThostFtdcUserApiStruct.h
from generate_struct_pas import Generate as s_pas
s_pas(dir).run()

