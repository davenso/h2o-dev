setwd(normalizePath(dirname(R.utils::commandArgs(asValues=TRUE)$"f")))
source('../../h2o-runit.R')

test.binop2.ampersand <- function(conn) {

  hex <- as.h2o(conn, iris)

  print(hex & 5)
  print(5 & hex)
  #print(5 && hex)
  #print(hex && 5)
  #print(hex && c(5,10,20))
  #print(c(5,10,20) && hex)
  #print(hex[,1] && c(5,10,20))
  #print(c(5,10,20) && hex[,1])
  #print(hex[,1] & c(5,10,20))
  #print(c(5,10,20) & hex[,1])
  
  testEnd()
}

doTest("Binop2 EQ2 Test: & and &&", test.binop2.ampersand)

