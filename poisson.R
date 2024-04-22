y = c(2, 7, 2, 1, 3, 3, 5, 3, 2, 1)
n = length(y)

sumY = sum(y)

theta = sumY/n

theta

NRiteration <- function(currTheta) {
  firstTerm = 2 * currTheta
  secondTerm = currTheta^2 * n / sumY
  return(firstTerm - secondTerm)
}

currTheta = 4

for(i in 1:10) {
  currTheta = NRiteration(currTheta)
  print(paste("Iteration", i, currTheta))
  if (theta - currTheta < tolerance) {
    print("Tolerance Reached")
    return()
  }
}
