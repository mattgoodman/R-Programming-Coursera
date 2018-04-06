rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  data = read.csv("data\\outcome-of-care-measures.csv", colClasses = "character")
  data[, 11] = as.numeric(data[, 11])
  data[, 17] = as.numeric(data[, 17])
  data[, 23] = as.numeric(data[, 23])
  
  ## Check that state and outcome are valid
  ## Check that state and outcome are valid
  if( !(state %in% unique(data$State))){
    stop("invalid state")
  }
  
  ref.mortality = c(11,17,23)
  names(ref.mortality) = c("heart attack", "heart failure", "pneumonia" )
  
  if(is.null(outcome) || !(outcome %in% names(ref.mortality))){
    stop ("invalid outcome")
  }
  id = ref.mortality[[outcome]]   
  tx = data[data$State==state, c(2,id) ]
  tx1 <- tx[complete.cases(tx),]
  
  
  ordered = tx1[order(tx1[,2], tx1[,1]),]
  
  if(tolower(num) == "best"){
    ordered[1,][[1]]
  }
  else if(tolower(num) == "worst"){
    tail(ordered,1)[[1]]
  }
  else{
     ordered[as.numeric(num),][[1]]
  }
}
