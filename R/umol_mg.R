#' Use the NASL formatted data and convert from mg/L to umol/L
#'
#' This function creates a new column with values in umols/L from the mg/L results
#' This only works for Nitrogen, Phosphorous, Carbon and Silica in mg/L
#' All other units will be listed as NA
#'
#' @param data dataframe formated using the load_nasl function
#' @return A dataframe with an extra column
#' @export


mg_umol<-function(x){
  library(dplyr)
  x<-x %>%
    mutate(umol=case_when(
      Unit=="mg P/L"   ~ Result/1000/30.9737*10^6,
      Unit=="mg N/L"   ~ Result/1000/14.0067*10^6,
      Unit=="mg C/L"   ~ Result/1000/12.0107*10^6,
      Unit=="mg Si/L"  ~ Result/1000/28.0855*10^6
    )) #%>%

}

