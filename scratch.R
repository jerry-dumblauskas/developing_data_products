library(ggplot2)
reg<-lm(price~carat, data = diamonds)
predict(reg, data.frame(carat = c(1, 2, 3)))

library(manipulate)

ggplot(diamonds, aes(x = price, y = carat)) + geom_point() + stat_smooth(method = "lm", col = "red")
