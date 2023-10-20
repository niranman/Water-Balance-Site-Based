
#8-day ET
setwd("evapotranspiration/ET2001_2022")
ET.list <- list.files(pattern =".tif", full.names=F)
ET.stack<-raster::stack(ET.list)
ET8days <- crop(ET.stack,Yanco)
names(ET8days)<-ET.list

#8 days to daily
# consider as uniform ET
is.leapyear=function(year){
  return(((year %% 4 == 0) & (year %% 100 != 0)) | (year %% 400 == 0))
}

years<- seq(2001,2022,by=1)

sub<-stack()
for (i in 1:years){
  sub1<-stack()
  l<-ifelse (is.leapyear(years[i]),366,365)
  sub1<-ET8days[[which(grepl(years[i],names(ET8days)))]]
  sub1<-sub1[[rep(names(sub1), each = 8)]]
  if(dim(sub1)[3]<365){l=dim(sub1)[3]}
  sub<-stack(sub,sub1[[1:l]])
}

f <- function(x) {  
  z <- which(is.na(x))
  nz <- length(z)
  nx <- length(x)
  if (nz > 0 & nz < nx) { 
    x[z] <- spline(x=1:nx, y=x, xout=z, method="natural")$y
  }
  x
}

dailyET <- calc(sub, f)

################################
# daily rain
rain_list <- list.files(path="rain", pattern ="*.nc", full.names=TRUE)
rain <- raster::stack(rain_list)

