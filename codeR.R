setwd("C:/Users/34619/Desktop/Salle/master/DATATHON")                                                                       # directorio de trabajo
cities_data <- read.table('cities_data.csv',header=TRUE,sep=';',stringsAsFactors = TRUE) # lectura de los datos
orders <- read.table('orders.csv',header=TRUE,sep=';',stringsAsFactors = TRUE) # lectura de los datos
product_attributes <- read.table('product_attributes.csv',header=TRUE,sep=',',stringsAsFactors = TRUE) # lectura de los datos
test <- read.table('test.csv',header=TRUE,sep=';',stringsAsFactors = TRUE) # lectura de los datos

summary(cities_data)
str(cities_data)
View(cities_data)

summary(orders)
str(orders)
View(orders)

summary(product_attributes)
str(product_attributes)
View(product_attributes)

summary(test)
str(test)
View(test)

heatmap(cor(as.matrix(scale(orders))))

      

MERGE<-merge(x = orders, y = product_attributes, all = TRUE)
View(orders)
summary(orders)


sum(orders$X3pl == ) 






