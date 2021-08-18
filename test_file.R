x <- 1:10
y <- 1:12
z <- 1:15


plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))