problem1 = function(filename = NULL, fcnname = NULL, nrange = NULL, nsample = NULL, compile = NULL) {
  a = nrange[1]
  b = nrange[2]
  require(tikzDevice)
  fullFilename = paste(filename, ".tex", sep = "")
  x = seq(a, b, length = nsample)
  y = fcnname(x)
  tikz(fullFilename, standAlone = TRUE)
  fcnnameLabel = paste("$", deparse(substitute(fcnname)), "$", sep = "")
  plot(x, y, type = 'l', xlab = "$x$", ylab = fcnnameLabel)
  dev.off()
  if (compile) {
    tools::texi2pdf(fullFilename)
  }
}
