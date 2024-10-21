
#' calculate CI
#'
#' @param coef coef from glm
#' @param se se from glm
#' @param siglevel sig level
#' @param roundto decimal places
#'
#' @return or and ci
#' @export
#'
#' @examples
#' coef = c(1:3)
#' se = c(0.1,0.2,0.3)
#' OR_95CI(coef = coef, se = se, siglevel =0.05,roundto=2)
OR_95CI <- function(coef, se, siglevel, roundto){
  q <- 1 - siglevel / 2
  OR <- exp(coef)
  ORlcl <- exp(coef - qnorm(q) * se)
  ORucl <- exp(coef + qnorm(q) * se)
  ORresult <- paste0(format(round(OR, roundto), nsmall = roundto),
                     " (",
                     format(round(ORlcl, roundto), nsmall = roundto),
                     ", ",
                     format(round(ORucl, roundto), nsmall = roundto),
                     ")"
  )
  return(ORresult)
}
