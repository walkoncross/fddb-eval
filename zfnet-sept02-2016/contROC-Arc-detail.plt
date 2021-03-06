# Compare your Contrete ROC curves with other methods
# At terminal: gnuplot ContROC.p
set terminal png size 1280, 960 enhanced font 'Verdana,18'
set size 1,1
set xtics 25
set ytics 0.05
set grid
set ylabel "True positive rate"
set xlabel "False positive"
set xr [0:500]
set yr [0:1.0]
set key below
set output "FDDB-eval-ContROC-detail.png"
plot  "tempContROC.txt" using 2:1 title 'FaceX-rlt-cont' with lines lw 2