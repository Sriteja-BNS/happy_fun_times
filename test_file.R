x <- 1:10
y <- 1:12
z <- 1:15


plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))

install.packages(c("car", "ggplot2"))

car::scatterplot(mpg ~ disp, 
                 data = mtcars)


library(ggplot2)
mylot <- ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm")

install.packages('plotly')

plotly::ggplotly(mylot)

st_jo_land <- read.csv("C:\Users\prana\Downloads\stJoeLand.csv")
st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")

st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")
names(st_joe_land_datatable)[names(st_joe_land_datatable) == "Zip Code"] <- 
  "Zip_Code"
save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")
load("stJoeInfo.RData")


my_mean <- function(numbers) {
  # The length function gives the length
  # of a vector. Use nrow for number of
  # rows in a data.frame.
  numbers_length <- length(numbers)
  numbers_sum <- sum(numbers)
  numbers_average <- numbers_sum / numbers_length
  # The return function isn't strictly necessary,
  # but it is a safe way of handling this. You could
  # also just put numbers_average at the end and
  # it would print out.
  return(numbers_average)
}

my_mean(st_joe_land$sale_price)
my_mean(st_joe_land_datatable$sale_price
)

apply(X=st_joe_land[,c("sale_price","year_built")],
      MARGIN=2,
      FUN= mean)


sample (x= c(1:1000,NA),
        size=1001) |>
  mean()
  mean(na.rm=TRUE)
  
  
  cor_data <- data.frame(x = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE), 
                         y = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE), 
                         z = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE))
  
  cor(cor_data,y=NULL,use="pairwise.complete.obs")

  
  summary(st_joe_land)
  
  View(st_joe_land)
  
  
  summary(st_joe_land$school_district)
  summary(as.factor(st_joe_land$school_district))
  summary(as.numeric(st_joe_land$school_district))
  
  
  factor(seq(from = 1, to = 10, by = .5)) |>
    as.numeric() |>
    mean()
    
 land_value <- st_joe_land 
land_value$dollar_per_acre <- land_value$sale_price / land_value$acreage
mean (land_value$dollar_per_acre[land_value$dollar_per_acre != Inf])  

View(land_value$dollar_per_acre)

land_value[, c("sale_price", "bedrooms")]

drop_vars <- which(names(land_value) %in% c("sale_price", "bedrooms"))

land_value[, -drop_vars]


####land_value[, - "bedrooms"] wont work as it isnt a number 
