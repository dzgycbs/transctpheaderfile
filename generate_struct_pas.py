#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
__title__ = ''
__author__ = 'dzgycbs'
__mtime__ = '2026/06/01'
"""

import os
import datetime

class Generate:
    def __init__(self, dir):
        self.ctp_dir = dir

    def run(self):
        """主函数"""
        fcpp = open(os.path.join(os.path.abspath(self.ctp_dir), 'ThostFtdcUserApiStruct.h'), 'r')
        fpy = open(os.path.join('pas', 'ThostFtdcUserApiStruct.pas'), 'w', encoding='gbk')

        fpy.write('{/// <summary>\n')
        fpy.write('/// 翻译自ThostFtdcUserApiStruct.h\n')
        fpy.write('/// </summary>\n')
        fpy.write('/// <author>dzgycbs</author>\n')
        fpy.write('/// <date>{0}</date>\n'.format(datetime.date.today()))
        fpy.write('}\n') 
        fpy.write('\n')
        fpy.write('unit ThostFtdcUserApiStruct;\n')
        fpy.write('\n')
        fpy.write('interface\n')
        fpy.write('\n')
        fpy.write('uses\n')
        fpy.write('  Classes, ThostFtdcUserApiDataType;\n')
        fpy.write('\n')
        fpy.write('type\n')

        for no, line in enumerate(fcpp):
            # 结构体申明注释
            if '///' in line and '\t' not in line:
                structname = line[3:-1]
                continue

            # 结构体变量注释
            elif '\t///' in line:
                remark = line[4:-1]
                py_line = '  ///{0}'.format(remark)
                

            # 结构体申明
            elif 'struct ' in line:
                content = line.split(' ')
                name = content[1].replace('\n', '')

                # struct begin
                py_line = """
///{1}
{0} = record
""".format(name, structname)
            
             # 结构体变量
            elif '\t' in line and '///' not in line:
                content = line.split('\t')
                typedef = content[1]
                variable = content[2].replace(';\n', "")
                py_line = """
  {0} : {1};
""".format(variable, typedef)

            # 结构体结束
            elif '}' in line:
                # struct end
                py_line = 'end;\np{0} = ^{0};\n'.format(name)
 
            # 结构体开始
            elif '{' in line:
                py_line = ''
                py_str = ''
                py_str_idx = 0
                py_str_format = ''

            # 其他
            else:
                py_line = '\n'
                continue

            fpy.write(py_line)
        
        fpy.write('\n')
        fpy.write('implementation\n')
        fpy.write('\n')
        fpy.write('end.')
        print('\nThostFtdcUserApiStruct.h翻译完成')


if __name__ == '__main__':
    Generate('../ctp_20230913').run()
