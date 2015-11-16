install.packages("curl")
library("curl")
m <- curl("https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data")
mu <- read.csv(m,header=FALSE)
df <- data.frame(mu)
colnames(df) <- c("class","capshape","capsurface","capcolor")
df2 <- df[c(1,2,3,4)]
edible <- subset(df2,class=="e")
require("stringr")
edible$class <- factor(edible$class)
levels(edible$class) <- list (
  edible = "e")
edible$capshape <- factor(edible$capshape)
levels(edible$capshape) <- list (
  bell = "b",
  conical = "c",
  convex = "x",
  flat = "f",
  knobbed = "k",
  sunken = "s")
edible$capsurface <- factor(edible$capsurface)
levels(edible$capsurface) <- list(
  fibrous = "f",
  grooves = "g",
  scaly = "y",
  smooth = "s")
edible$capcolor <- factor(edible$capcolor)
levels(edible$capcolor) <- list(
  brown = "n",
  buff = "b",
  cinnamon = "c",
  gray = "g",
  green = "r",
  pink = "p",
  purple = "u",
  red = "e",
  white = "w",
  yellow = "y"
  )
