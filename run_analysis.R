## Check for data.table package and install if necesary

if (!require("data.table")) {
  install.packages("data.table")
}