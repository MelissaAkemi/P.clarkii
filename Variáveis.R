library(sf)
library(prettymapr)
library(raster)

#Diretório
setwd("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente")

#Shapefiles
mundo <- read_sf(dsn="C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/occs/ne_10m_admin_0_countries/ne_10m_admin_0_countries.shp")

#Dataframe com occs
occs <- read.csv(file = "gbif,Procambarus clarkii.csv", header = T);
head(occs)
pontos_sf <- st_as_sf(occs, coords = c("longitude", "latitude"))
crs <- st_crs(mundo)
st_crs(pontos_sf) <- crs  


#######VARIÁVEIS########

####BIO01
bio1<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/futuro/wc2.1_5m_bioc_BCC-CSM2-MR_ssp126_2021-2040.tif.opdownload")
bio1
plot(bio1)

#recortar camada
bio1crop <- crop(bio1, extent(-70, -20, -40, 0))
plot(bio1crop)

#mapa
pdf('bio1.pdf')
plot(bio1crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO02
bio2<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_2.tif")
bio2
plot(bio2)

#recortar camada
bio2crop <- crop(bio2, extent(-70, -20, -40, 0))
plot(bio2crop)

#mapa
pdf('bio2.pdf')
plot(bio2crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO03
bio3<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_3.tif")
bio3
plot(bio3)

#recortar camada
bio3crop <- crop(bio3, extent(-70, -20, -40, 0))
plot(bio3crop)

#mapa
pdf('bio3.pdf')
plot(bio3crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO04
bio4<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_4.tif")
bio4
plot(bio4)

#recortar camada
bio4crop <- crop(bio1, extent(-70, -20, -40, 0))
plot(bio4crop)

#mapa
pdf('bio4.pdf')
plot(bio4crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



#####BIO05
bio5<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_5.tif")
bio5
plot(bio5)

#recortar camada
bio5crop <- crop(bio5, extent(-70, -20, -40, 0))
plot(bio5crop)

#mapa
pdf('bio5.pdf')
plot(bio5crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO06
bio6<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_6.tif")
bio6
plot(bio6)

#recortar camada
bio6crop <- crop(bio6, extent(-70, -20, -40, 0))
plot(bio6crop)

#mapa
pdf('bio6.pdf')
plot(bio6crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO07
bio7<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_7.tif")
bio7
plot(bio7)

#recortar camada
bio7crop <- crop(bio7, extent(-70, -20, -40, 0))
plot(bio7crop)

#mapa
pdf('bio7.pdf')
plot(bio7crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO08
bio8<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_8.tif")
bio8
plot(bio8)

#recortar camada
bio8crop <- crop(bio8, extent(-70, -20, -40, 0))
plot(bio8crop)

#mapa
pdf('bio8.pdf')
plot(bio8crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO09
bio9<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_9.tif")
bio9
plot(bio9)

#recortar camada
bio9crop <- crop(bio9, extent(-70, -20, -40, 0))
plot(bio9crop)

#mapa
pdf('bio9.pdf')
plot(bio9crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO10
bio10<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_10.tif")
bio10
plot(bio10)

#recortar camada
bio10crop <- crop(bio10, extent(-70, -20, -40, 0))
plot(bio10crop)

#mapa
pdf('bio10.pdf')
plot(bio10crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO11
bio11<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_11.tif")
bio11
plot(bio11)

#recortar camada
bio11crop <- crop(bio11, extent(-70, -20, -40, 0))
plot(bio11crop)

#mapa
pdf('bio11.pdf')
plot(bio11crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO12
bio12<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_12.tif")
bio12
plot(bio12)

#recortar camada
bio12crop <- crop(bio12, extent(-70, -20, -40, 0))
plot(bio12crop)

#mapa
pdf('bio12.pdf')
plot(bio12crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO13
bio13<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_13.tif")
bio13
plot(bio13)

#recortar camada
bio13crop <- crop(bio13, extent(-70, -20, -40, 0))
plot(bio13crop)

#mapa
pdf('bio13.pdf')
plot(bio13crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO14
bio14<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_14.tif")
bio14
plot(bio14)

#recortar camada
bio14crop <- crop(bio14, extent(-70, -20, -40, 0))
plot(bio14crop)

#mapa
pdf('bio14.pdf')
plot(bio14crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO15
bio15<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_15.tif")
bio15
plot(bio15)

#recortar camada
bio15crop <- crop(bio15, extent(-70, -20, -40, 0))
plot(bio15crop)

#mapa
pdf('bio15.pdf')
plot(bio15crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO16
bio16<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_16.tif")
bio16
plot(bio16)

#recortar camada
bio16crop <- crop(bio16, extent(-70, -20, -40, 0))
plot(bio16crop)

#mapa
pdf('bio16.pdf')
plot(bio16crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO17
bio17<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_17.tif")
bio17
plot(bio17)

#recortar camada
bio17crop <- crop(bio17, extent(-70, -20, -40, 0))
plot(bio17crop)

#mapa
pdf('bio17.pdf')
plot(bio17crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO18
bio18<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_18.tif")
bio18
plot(bio18)

#recortar camada
bio18crop <- crop(bio18, extent(-70, -20, -40, 0))
plot(bio18crop)

#mapa
pdf('bio18.pdf')
plot(bio18crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()



####BIO19
bio19<-raster("C:/Users/melia/Desktop/P. clarkii/RSTUDIO v1/Layers/presente/wc2.1_5m_bio (1)/wc2.1_5m_bio_19.tif")
bio19
plot(bio19)

#recortar camada
bio19crop <- crop(bio19, extent(-70, -20, -40, 0))
plot(bio19crop)

#mapa
pdf('bio19.pdf')
plot(bio19crop)
plot(st_geometry(mundo), add=TRUE, border = "grey60",xlim = c(20,50), ylim = c(-30, 20), axes = TRUE)
plot(pontos_sf, add = TRUE, col = "black", pch = 16, cex = 0.5)
scalebar(1000,xy=c(50,0),type='bar',divs=2, below='km')
addnortharrow('topright',scale=0.6)
box()
dev.off()