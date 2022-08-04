library(maps)
library(mapdata)
library(ggplot2)
library(ggrepel)
library(cowplot)
library(socviz)
library(tidyr) 
library(dplyr)

california <- map_data("state") %>% filter(region == "california")

load("~/Downloads/wind_turbines.rda")
wind_ca <- wind_turbines %>% filter(state == "california")
ggplot() + geom_polygon(data = california, aes(x = long, y = lat, group = group), fill = "blue", color = "red")
ggplot() + geom_polygon(data = california, aes(x = long, y = lat, group = group), fill = "blue", color = "red") + geom_point(data = wind_ca, aes(x = longitude, y = latitude, color = capacity_mw), size = 2) + guides(fill = FALSE)

---
  title: "Wind Turbines in California"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}
library(mapdata)
california <- map_data("state") %>% filter(region == "california")

load("~/Downloads/wind_turbines.rda")
wind_ca <- wind_turbines %>% filter(state == "california")

ggplot() + geom_polygon(data = california, aes(x = long, y = lat, group = group), fill = "blue", color = "black") + geom_point(data = wind_ca, aes(x = longitude, y = latitude, color = capacity_mw), size = 2) + guides(fill = FALSE)
```
