# We install the ggmap package
install.packages("ggmap")

# We load the ggmap.
# This needs to be done every time
# that you want to make a map.
library(ggmap)

# Now we load the information from the AirBnB data
# for the city of Los Angeles.
myDF <- read.csv("/home/nicho168/Desktop/airports.csv")

# Here are the first 6 lines of this file:
head(myDF)
# and the dimensions of the file:
dim(myDF)

# These are the longitudes and latitudes:
myDF$longitude
myDF$latitude

# Now we build a new data.frame containing
# only the longitudes and latitudes.
mypoints <- data.frame(lon=myDF$long,lat=myDF$lat)

# We use the Google API key,
# so that we are able to load maps in Google.
register_google(key = "AIzaSyCL2gzYHcEn6pPYRjrWge4KQ9gEaiQ8MqQ", write = TRUE)

# In preparation for making a map,
# we get the center of London from Google:
london_center = as.numeric(geocode("London"))
# Then we build a map of Los Angeles
Londonmap <- ggmap(get_googlemap(center=london_center,zoom=9))
# and we display it.
Londonmap

# Finally, we add the points to the map
Londonmap <- Londonmap + geom_point(data=mypoints, size=0.1)
# and we display the map again.
Londonmap


