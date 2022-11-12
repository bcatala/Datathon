# Datathon

Datathon 2022 - UPC - Supply Chain Resilience
2022-11-12

Challenge
Understand main root-cause affecting supply chain deliveries and predict product delays based on historical inbound/outbound orders of the company. Providing visibility of supply chain resiliency to maximize customer service levels

What is it expected from the technical challenge?

Provide data insights based on descriptive analytics of historical data
Regression model to predict likelihood of order delay
Evaluation Criteria
What will be measured?

Business case presentation outlining descriptive insights of main drivers’ toward order delays. How those insights can be translated to business actions and value proposition.

Predictive model to get likelihood of order delay. ROC Curve (AUC) evaluation metric for given test data set. A Kaggle Competition have been created for teams to submit and test their model results. Please sign-up to the competition and follow the instructions

Data
orders.csv
Transactional historical data of the company supply chain inbound/outbound shipments

order_id (string): unique identifier of transactional order from port inbound to final destination. Primary key of data set.
origin_port (string): location of port where order imports arrives.
3pl (string): Third-party logistic company id used for distribution, warehousing, and fulfillment services.
customs_procedure (string): Type of procedure to be used in the imports legal process
logistic_hub (string): city name of company logistic hub address. Intermediate step between origin_port and customer
customer (string): city name of customer destination address
product_id (string): unique identifier of final product
units (integer): order size quantity
late_order (boolean): target variable, if 1 the order_id have been tagged as a late delivery, 0 is on-time
product_attributes.csv
Master data of product unit weight

product_id (string): unique identifier of final product
weight (integer): product weight per 1 unit in grams
material_handling (integer): Classification id for product safety risk and risk of damage e.g. fragile, toxic, flammable.
cities_data.csv
Geographic coordinates of cities involve in the supply chain. Including distance between pair of cities

city_from_name (string): City of location starting point
city_to_name (string): City of destination location
city_from_coord (tuple): Coordinates in (latitude, longitude) of city_from
city_to_coord (tuple): Coordinates in (latitude, longitude) of city_to
distance (float): kilometers between the pair cities
test.csv
Same as orders.csv but variable late_order has been truncated. This is the target variable