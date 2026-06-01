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
        self.g_dict = {}

    def checkvarexist(self,key) :
        bfound = False
        for item in self.g_dict.keys() :
            if item.lower() == key.lower() :
               bfound = True
               print('>> 请注意，[{0}] 有相似命名变量 [{1}] ，pascal不区分大小写，请自行调整!!!'.format(key, item))
               break
        if bfound == False :
           self.g_dict[key] = 1
        return bfound

    def run(self):
        """主函数"""
        self.type_dict = {'int': 'Integer', 'double': 'Double', 'short': 'SmallInt'}
        

        fcpp = open(os.path.join(os.path.abspath(self.ctp_dir), 'ThostFtdcUserApiDataType.h'), 'r')
        fpy = open(os.path.join('pas', 'ThostFtdcUserApiDataType.pas'), 'w', encoding='gbk')

        fpy.write('{/// <summary>\n')
        fpy.write('/// 翻译自ThostFtdcUserApiDataType.h\n')
        fpy.write('/// </summary>\n')
        fpy.write('/// <author>dzgycbs</author>\n')
        fpy.write('/// <date>{0}</date>\n'.format(datetime.date.today()))
        fpy.write('}\n') 
        fpy.write('\n')
        fpy.write('unit ThostFtdcUserApiDataType;\n')
        fpy.write('\n')
        fpy.write('interface\n')
        fpy.write('\n')
        fpy.write('uses\n')
        fpy.write('  Classes;\n')
        fpy.write('\n')
        fpy.write('type\n')

        py_enumstart = False
        py_definestart = False
        py_templine = ''
        py_start = False

        for no, line in enumerate(fcpp):
            
            if '#define THOST_FTDCDATATYPE_H' in line :
                py_start = True
                continue
            
            if py_start == False :
               continue

            if py_enumstart == True :
                if '{' in line :
                    py_line = '(\n'
                elif '}' in line :
                    py_line = ');\n\n'
                    py_enumstart = False
                else :
                    py_line = line
                
                fpy.write(py_line)
                continue

            if 'enum THOST_TE_RESUME_TYPE' in line :
               py_enumstart = True
               fpy.write('\nTHOST_TE_RESUME_TYPE = \n')
               continue

            if '#define' in line and py_definestart == False:
                py_definestart = True
                fpy.write('const\n')
            
            elif 'typedef' in line and py_definestart == True:
                py_definestart = False
                fpy.write('type\n')

            # 注释
            if '///' in line and '\t' not in line:
                if 'TFtdc' not in line[3:] and '///' not in line[3:] : 
                   py_templine = line
                   continue
                else :
                  py_line = line

            elif '#define' in line and py_definestart == True:
                if len(py_templine) > 0 :
                   fpy.write(py_templine)
                   py_templine = ''

                key = line.split(' ')
                py_line = '{0} = {1};\n\n'.format(key[1], key[len(key)-1][:-1])  
          
            elif 'typedef' in line:  # 类型申明
            # typedef char TThostFtdcTraderIDType[21]; ==> TThostFtdcTraderIDType = array[0..20] of Char;
                if line.find(' char ') > 0 and line.find('[') > 0:
                    key = line.split(' ')[2][:-3]
                    key = key.split('[')
                    py_line = '{0} = array[0..{1}] of char;\n\n'.format(key[0], int(key[1]) - 1)               
                   
                    self.checkvarexist(key[0])
                
                #typedef char TThostFtdcExchangePropertyType; ==> TThostFtdcExchangePropertyType =  Char;
                elif line.find(' char ') > 0 and line.find('[') < 0:
                    key = line.split(' ')[2][:-2]
                    py_line = '{0} =  char;\n\n'.format(key)  
                    self.checkvarexist(key)

                #typedef int TThostFtdcLegIDType;
                 #typedef double TThostFtdcUnderlyingMultipleType;
                elif line.find(' int ') > 0 or line.find(' double ') > 0 or line.find(' short ') > 0:
                    key = line.split(' ')[2][:-2]
                    dtype = line.split(' ')[1]
                    py_line = '{0} = {1};\n\n'.format(key, self.type_dict[dtype]) 
                    self.checkvarexist(key)

            # 其他
            else:
                py_line = '\n'
                continue

            fpy.write(py_line)
        
        fpy.write('\n')
        fpy.write('implementation\n')
        fpy.write('\n')
        fpy.write('end.')
        print('\nThostFtdcUserApiDataType.h翻译完成')



if __name__ == '__main__':
    Generate('../ctp_20230913').run()
