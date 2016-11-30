# Compare your discrete ROC curves with other methods
# At terminal: gnuplot discROC.p
set terminal png size 1280, 960 enhanced font 'Verdana,18'
set size 1,1
set xtics 0.05
set ytics 0.05
set grid
set ylabel "Precision"
set xlabel "Recall"
set xr [0:1.0]
set yr [0:1.0]
set key below
set output "discROC-PR.png"
plot  "./tempDiscROC.txt_PR.txt" using 1:2 title 'discROC-PR' with lines lw 2