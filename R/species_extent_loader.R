#' Load data describing geographic extent of species presence
#' 
#' @return
#' 
#' @export
#' 
#' 
species_extent_loader <- function(){
  
  #--Download Species Extent Data
  data.path <- download_cache(url="https://raw.githubusercontent.com/rsmiller74/species_location/main/Data/taxa.extent.data.RDS")

  #data.path <- download_cache(url="https://raw.githubusercontent.com/TabakM/CameraTrapDetectoR/main/Data/species.extent.data.csv")
  
  #--Read Species Extent Data
  extent.data<-readRDS(data.path)

  #extent.data<-read.csv(data.path, header=TRUE, stringsAsFactors=TRUE)

  #extent.data<-readr::read_csv(data.path, show_col_types=FALSE, progress=FALSE)
  #extent.data<-as.data.frame(extent.data)
  
  return(extent.data)
}#END Function
                         








