# Compare your Contrete ROC curves with other methods
# At terminal: gnuplot ContROC.p
set terminal png size 1280, 960 enhanced font 'Verdana,18'
set size 1,1
set xtics 500
set ytics 0.1
set grid
set ylabel "True positive rate"
set xlabel "False positive"
set xr [0:2000]
set yr [0:1.0]
set key below
set output "contROC.png"
plot  "./tempContROC.txt" using 2:1 title 'contROC' with lines lw 2