# Water-Balance-Site-Based
The water balance model relies on three primary inputs: daily evapotranspiration, rainfall, and bucket size.

1. Obtain 8-day MODIS evapotranspiration (ET) for free from [USGS website](https://e4ftl01.cr.usgs.gov/MOLT/MOD16A2.061) or directly from Google Earth Engine (GEE).

2. Download daily rainfall data from [Long Paddock website](https://www.longpaddock.qld.gov.au/silo/gridded-data).

3. Access soil data from [eSoil website](https://esoil.io/TERNLandscapes/Public/Pages/SLGA).

Utilise pedotransfer functions with the soil data to derive the bucket sizes for each layer. The bucket represents the amount of water available for plant use. The model incorporates five bucket sizes: 0-5, 5-15, 15-30, 30-60, and 60-100 cm. The top two bucket sizes differ in water holding capacity and residual water. Residual water is the amount retained in soil pores after gravitational drainage, representing the minimum water the soil can retain against gravity. The next three bucket sizes differ between water holding capacity and permanent wilting point. The permanent wilting point is the moisture level in the soil at which plants can no longer extract water.

To organise daily data for model execution, refer to the provided code "ET&rain4WBmodel.r." Alternatively, run the model using the provided RDS datasets.
