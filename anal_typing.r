  typing=read.csv("Typing speed.csv")
  typing$DATE[ typing$MONTH==4 ] = typing$DATE[ typing$MONTH==4 ] + 31 
  typing$DATE[ typing$MONTH==5 ] = typing$DATE[ typing$MONTH==5 ] + 61 
  typing$DATE[ typing$MONTH==6 ] = typing$DATE[ typing$MONTH==6 ] + 92 
  typing$DATE[ typing$MONTH==7 ] = typing$DATE[ typing$MONTH==7 ] + 122 
  plot(typing$DATE, typing$WPM, xlab = 'Day No.', ylab = 'WPM', main="Plots of WPM vs DATE", type = "b")
  
  points(typing$DATE[ typing$MONTH == 3 ], typing$WPM[  typing$MONTH == 3 ], col="Yellow", pch = 19, )
  points(typing$DATE[ typing$MONTH == 4 ], typing$WPM[  typing$MONTH == 4 ], col="Blue", pch = 19)
  points(typing$DATE[ typing$MONTH == 5 ], typing$WPM[  typing$MONTH == 5 ], col="Green", pch = 19)
  points(typing$DATE[ typing$MONTH == 6 ], typing$WPM[  typing$MONTH == 6 ], col="Red", pch = 19)
  points(typing$DATE[ typing$MONTH == 7 ], typing$WPM[  typing$MONTH == 7 ], col="Black", pch = 19)

typing
regTyping = lm(CPM ~ DATE, data = typing)
summary(regTyping)
(161 - 55.748) / 0.70252


