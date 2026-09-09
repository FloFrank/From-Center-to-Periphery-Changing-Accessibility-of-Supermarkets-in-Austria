# From-Center-to-Periphery-Changing-Accessibility-of-Supermarkets-in-Austria


The centers of municipalities, cities, or neighborhoods served as central points where
services, retail stores, and residential areas were concentrated. However, in recent years,
there has been a decentralization of these polycentric structures. In particular, the retail
food sector has increasingly shifted from city and town centers to peripheral areas of
settlement structures. The main causes of this development are the changing shopping
habits and increasing motorization, which allow people to cover larger distances with ease.
This development has far-reaching consequences. In addition to the increasing land con-
sumption, the distances that need to be covered for grocery shopping are also changing.
When grocery stores are no longer located in the center but on the outskirts, residents
are forced to take longer trips. This influences the choice of transportation, as longer
distances are often covered by motorized individual transport. This particularly affects ol-
der people, who, due to limited mobility, are often unable to walk long distances or use a car.
This work examines how the settlement of grocery retail on the outskirts of the sett-
lement structures in Austria between 2013 and 2023 has affected the population, what
consequences this development has for the Austrian population, and to what extent it
influences the choice of transportation for grocery shopping.

<figure>
<img width="7015" height="4960" alt="gemeinden_veraenderung_gewichtet" src="https://github.com/user-attachments/assets/12244298-7ee0-489c-85b1-9270dbf97eb2" />
<figcaption>Rate of change in walking time, 2013–2023 (Source: Statistics Austria; own calculation, 2024)</figcaption>
</figure>


<figure>
<img width="7015" height="4960" alt="gemeinden_veraenderung_gewichtet_absolut" src="https://github.com/user-attachments/assets/6046fb65-e183-4ada-8b7c-0e39d9bb4b8f" />
<figcaption>Absolute change in walking times per municipality, 2013–2023 (Source: Statistics Austria; own calculation, 2024).</figcaption>
</figure>

## Data Privacy Note
Supermarket locations are subject to an NDA (trade secret). All other data (traffic graphs, population data, geographical boundaries, etc.) are publicly available.


## Research Question
Has the distance and time required for the population to travel from their place of residence to the nearest grocery retail locations changed over a certain period? Such changes could be attributable to the relocation of grocery retail outlets from town centers to the outskirts.

__Have travel times and distances for the Austrian population between their places of residence and grocery retail locations changed due to developments in peripheral areas?__ 
The study analyzes potential changes in distances to grocery retail locations in peripheral settlement areas, as well as the resulting effects on accessibility and travel times over time. The aim of the investigation is to determine whether—and to what extent—changes in locations and travel times have occurred within a defined period.

## Workflow and Project Structure

### 1.) GIP Network Preprocessing
Input: GIP Open Data (Austria's national road network)
<br>Tool: Python (separate repository: austria-gip-decoder)
<br>Output: Processed shp-file with network topology

### 2.) Population Raster Preparation
<br>Input: 100m population raster
<br>Tool: Python
<br>Output: Points shapefile representing population distribution

### 3.) OD-Matrix Routing
<br>Input: GIP network, population points, supermarket locations
<br>Tool: ArcGIS Pro (Network Analyst)
<br>Output: Travel time matrix (all population points to nearest supermarkets)

### 4.) Matrix Aggregation
<br>Input: OD-Matrix results
<br>Tool: PostGIS/SQL
<br>Output: Aggregated accessibility metrics by municipality and spatial typology

### 5.) Cartography
<br>Input: Aggregated data, administrative boundaries
<br>Tool: QGIS and R
<br>Output: PDF maps and visualizations

### 6.) Spatial Statistics
<br>Input: Aggregated accessibility data with covariates
<br>Tool: R (OLS regression, spatial autocorrelation analysis)
<br>Output: Statistical results, spatial inequality measures

