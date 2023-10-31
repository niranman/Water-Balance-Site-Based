# Water-Balance-Site-Based
The water balance is run on the selected points of interest. The Grains Research & Development Corporation funded this work in a project called SoilWaterNow: Soil water nowcasting for the grains industry. Grant ID: UOS2001-002RTX.

The water balance model relies on three primary inputs: daily evapotranspiration, rainfall, and bucket size.

Obtain 8-day MODIS evapotranspiration (ET) for free from USGS website or directly from Google Earth Engine (GEE).

Download daily rainfall data from Long Paddock website.

Access soil data from eSoil website.

Utilise pedotransfer functions with the soil data to derive the bucket sizes for each layer. The bucket represents the amount of water available for plant use. The model incorporates five bucket sizes: 0-5, 5-15, 15-30, 30-60, and 60-100 cm. The top two bucket sizes differ in water holding capacity and residual water. Residual water is the amount retained in soil pores after gravitational drainage, representing the minimum water the soil can retain against gravity. The next three bucket sizes differ between water holding capacity and permanent wilting point. The permanent wilting point is the moisture level in the soil at which plants can no longer extract water.

To organise daily data for model execution, refer to the provided code "ET&rain4WBmodel.r." Alternatively, run the model using the provided RDS datasets.

For a more in-depth understanding of how the model operates, kindly consult the paper titled "Space-time Modelling of Soil Moisture: Prediction and Forecasting for Enhanced Agricultural Management."
