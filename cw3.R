prob_space <- function(x){
  return(x/sum(x))
}

event <- function(x, prob_space){
  res <- rep(FALSE, length(prob_space))
  for(i in x){
    if(i<=length(prob_space)){
      res[i] <- TRUE
    }
  }
  return(res)
}


union <- function(e1, e2){
  res <- rep(FALSE, length(e1))
  for(i in 1:length(res)){
    if(e1[i] == TRUE || e2[i] == TRUE){
      res[i] <- TRUE
    }
  }
  return(res)
}
  

intersect <- function(e1, e2){
  res <- rep(FALSE, length(e1))
  for(i in 1:length(res)){
    if(e1[i] == TRUE && e2[i] == TRUE){
      res[i] <- TRUE
    }
  }
  return(res)
}
  

complement <- function(e){
  res <- rep(FALSE,length(e))
  for(i in 1:length(res)){
    if(e[i] == FALSE){
      res[i] <- TRUE
    }
  }
  return(res)
}
  

prob <- function(event, prob_space){
  res <- 0
  for(i in 1:length(event)){
    if(event[i] == TRUE){
      res <- res + prob_space[i]
    }
  }
  return(res)
}
