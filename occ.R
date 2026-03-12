library(rgbif)

## Diretório
setwd("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/occs")

## sp
sp<-'Procambarus clarkii'

### GBIF
## taxon key
occ_gbif <- occ_search(scientificName = sp)$data
unique(occ_gbif$taxonKey)

## ocorrências 
gbif_download <- occ_download(pred("taxonKey", 2227300),format = "SIMPLE_CSV")

## metadado      
sink("metadata.txt")
occ_download_wait(gbif_download)
sink()

## dado original em zip file      
data <- occ_download_get(gbif_download) %>%
  occ_download_import()
names(data)


## dados do gbif em dataframe    
occ_gbif<-data.frame(data$species, data$decimalLongitude, data$decimalLatitude, data$gbifID, data$datasetKey, data$year)
colnames(occ_gbif)<-c('sp','longitude','latitude','occID','datasetID','year')
occ_gbif$prov<-c(rep("gbif",nrow(occ_gbif)))
head(occ_gbif)
dim(occ_gbif)
occ_gbif<-occ_gbif[complete.cases(occ_gbif[,2:3]),]
dim(occ_gbif)
write.csv(occ_gbif,paste("gbif_",sp, ".csv",sep=","))




library(sf)

## shapefile do local
mundo <- read_sf(dsn="C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/occs/ne_110m_rivers_lake_centerlines/ne_110m_rivers_lake_centerlines.shp")

## igualar CRS
pontos_sf <- st_as_sf(occ_gbif, coords = c("longitude", "latitude"))
crs <- st_crs(mundo)  
st_crs(pontos_sf) <- crs

## plotar e salvar o mapa
pdf('occs_Pclarkii.pdf')
plot(st_geometry(mundo), border = "grey60", axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
dev.off()