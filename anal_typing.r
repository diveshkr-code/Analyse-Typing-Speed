typing=read.csv("Typing speed.csv")
typing$DATE[ typing$MONTH==4 ] = typing$DATE[ typing$MONTH==4 ] + 31 
typing$DATE[ typing$MONTH==5 ] = typing$DATE[ typing$MONTH==5 ] + 61 
typing$DATE[ typing$MONTH==6 ] = typing$DATE[ typing$MONTH==6 ] + 92 
typing$DATE[ typing$MONTH==7 ] = typing$DATE[ typing$MONTH==7 ] + 122 
plot(typing$DATE, typing$CPM, xlab = 'DATE', ylab = 'CPM', main="Plots of CPM vs DATE")

points(typing$DATE[ typing$MONTH == 3 ], typing$CPM[  typing$MONTH == 3 ], col="Yellow", pch = 19)
points(typing$DATE[ typing$MONTH == 4 ], typing$CPM[  typing$MONTH == 4 ], col="Blue", pch = 19)
points(typing$DATE[ typing$MONTH == 5 ], typing$CPM[  typing$MONTH == 5 ], col="Green", pch = 19)
points(typing$DATE[ typing$MONTH == 6 ], typing$CPM[  typing$MONTH == 6 ], col="Red", pch = 19)
points(typing$DATE[ typing$MONTH == 7 ], typing$CPM[  typing$MONTH == 7 ], col="Black", pch = 19)
