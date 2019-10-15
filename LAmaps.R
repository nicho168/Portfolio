# We install the ggmap package
install.packages("ggmap")

# We load the ggmap.
# This needs to be done every time
# that you want to make a map.
library(ggmap)

# Now we load the information from the AirBnB data
# for the city of Los Angeles.
myDF <- read.csv("/class/datamine/data/airbnb/united-states/ca/los-angeles/2019-07-08/visualisations/listings.csv")

# Here are the first 6 lines of this file:
head(myDF)
# and the dimensions of the file:
dim(myDF)

# These are the longitudes and latitudes:
myDF$longitude
myDF$latitude

# Now we build a new data.frame containing
# only the longitudes and latitudes.
mypoints <- data.frame(lon=myDF$longitude,lat=myDF$latitude)

# We use the Google API Key
# so that we are able to load maps in Google.
register_google(key = "AIzaSyDYnLiu1jyxvo4hYqZJqqyZM7kx2fCpUls", write = TRUE)

# In preparation for making a map,
# we get the center of Los Angeles from Google:
la_center = as.numeric(geocode("Los Angeles"))
# Then we build a map of Los Angeles
LAmap <- ggmap(get_googlemap(center=la_center,zoom=9))
# and we display it.
LAmap

# Finally, we add the points to the map
LAmap <- LAmap + geom_point(data=mypoints, size=0.1)
# and we display the map again.
LAmap
# One final remark:
# 3 locations are far enough away from the center
# of Los Angeles that they do not show up.





