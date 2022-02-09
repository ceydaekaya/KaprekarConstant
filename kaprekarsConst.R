library(stringr)
i<-4
count<-0
kaprekar_test <- function(num){
  if (nchar(num) == i) {
    kaprekarConst = 6174
    while (num != kaprekarConst) {
      count<-count+1
      nums <- as.integer(str_extract_all(num, "[0-9]")[[1]])
      Dec <- as.integer(str_sort(nums, decreasing = TRUE))
      Dec <- as.integer(paste(Dec, collapse = ""))
      Inc <- as.integer(str_sort(nums, decreasing = FALSE))
      Inc <- as.integer(paste(Inc, collapse = ""))
      num = as.integer(Dec) - as.integer(Inc)
      print(paste0('Iteration ',count,':  ', as.integer(Dec), ' ', as.integer(Inc), ' => ', as.integer(num)))
        }
  } 
}
kaprekar_test(3453)