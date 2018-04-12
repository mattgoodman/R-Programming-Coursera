rankall <- function(outcome, num = "best") {
  ## Read outcome data
  data = read.csv("data\\outcome-of-care-measures.csv", colClasses = "character")
  data[, 11] = as.numeric(data[, 11])
  data[, 17] = as.numeric(data[, 17])
  data[, 23] = as.numeric(data[, 23])
  

  ref.mortality = c(11,17,23)
  names(ref.mortality) = c("heart attack", "heart failure", "pneumonia" )
  
  if(is.null(outcome) || !(outcome %in% names(ref.mortality))){
    stop ("invalid outcome")
  }
  
  
  id = ref.mortality[[outcome]]   
  
  colHospitalName = 2
  colState = 7
  
  tx = data[, c(colHospitalName, colState, id)]

  tx1 = tx[complete.cases(tx),]
  spli = split(tx1, tx1$State)
  
  res = lapply(spli, function(x)  {
         
            orderedState= x[order(x[,3], x[,1]),]
         
         if(tolower(num) == "best"){
            orderedState[1,][[1]]  
         }
         else if(tolower(num) == "worst"){
            tail(orderedState,1)[[1]]  
         }
         else{
            orderedState[as.numeric(num),][[1]]
         }
     })
res
}