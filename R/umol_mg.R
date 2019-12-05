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

