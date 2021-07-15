

### Business question: 
_"Are rental prices of films higher for categories that are more popular?"_

**Data:**
In order to answer this question, the database 'Sakilla' is used.

**Proces:**
1. The packages, numpy, pandas, pymysql sqlalchemy, seaborn and matplotlib are imported to start.
2. The connection with sql is made in python with creating an engine.
3. MySql is used for the joins of tables and selecting the right columns.
4. Several checks have been performed to check whether the query has worked and of what datatypes the dataframe consist of, it is established that there are no nulls
5. Amount and total (count of) categories have been added.
6. A histogram and boxplot has been made of the amount and categories to check for the distribution and outliers.
7. The visualisations have been made through Tableau, in order to accomplish that, the dataframe is exported as csv.

**Output:**
Graph 1:the average amount of rental price per category
![Tableau1](https://user-images.githubusercontent.com/83515037/122964352-757b6980-d387-11eb-8e5e-74ba3489f8ab.png)
Graph 2: The average rental price over time 
![Tableau2](https://user-images.githubusercontent.com/83515037/122964354-76ac9680-d387-11eb-99b3-8ee3dd93a14c.png)
Graph 3: The total rentals per category
![Tableau3](https://user-images.githubusercontent.com/83515037/122964358-78765a00-d387-11eb-8b1c-ba5496853b32.png)


### Answer question:
Based on the graphs, it is clear that the most popular category is sport followed with animation. But the most expensive movies to rent are in the category comedy and new, followed by sports. From this it is clear that the most popular catogories are **not** the most expensive movies to rent. Also word noting is the prices over time, although inflation has been increasing in the years 2005/2006, the rental prices have declined in this timeperiod, possible due to the decreasing interest in rental movies. 
