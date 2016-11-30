#! /usr/bin/env python

import os
import os.path as osp

# nImages = 2845
nGT = 5171

input_file = r'./tempDiscROC.txt'
output_file = input_file + '_PR.txt'

gnuplot = r'"C:\Program Files\gnuplot\bin\gnuplot.exe"'
plot_script = './discROC-PR.plt'

if osp.exists(input_file):
    fp = open(input_file, 'r')
    fp_out = open(output_file, 'w')

    for line in fp:
        line = line.strip()
        if len(line) > 0:
            splits = line.split()
            recall = float(splits[0])
            nFP = int(splits[1])
            thresh = float(splits[2])

            nTP = nGT*recall
            if nTP+nFP > 0:
                precision = nTP / (nTP+nFP)
                fp_out.write('%f\t%f\n' % (precision, recall))

    fp.close()
    fp_out.close()

if osp.exists(output_file) and osp.exists(plot_script) :
    os.system(gnuplot + ' ' + plot_script)
