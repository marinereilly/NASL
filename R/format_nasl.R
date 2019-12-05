#' Load data provided by the Nutrient Analytical Services Lab (NASL) at CBL
#'
#' This function loads an excel file from NASL. It assumes that the first 23 columns
#' are superfluous and column names are in the 24th row.
#' Any rows that are empty will be dropped
#'
#' @param data Filepath the the excel document in quotes.  must be an .xlsx
#' @return A dataframe
#' @export

load_nasl<-function(data){
  df<- readxl::read_excel(data,sheet = "DATA",
                          skip = 23,
                          col_types = c("text", "date", "date", "text", "text",
                                "date", "date", "text", "text", "numeric",
                                "text", "text", "text", "text", "text"),
                  col_names = TRUE)
   df<-tidyr::drop_na(df, Result)
}




