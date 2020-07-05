# Sequential-Pattern-Mining
Sequential Pattern Mining using a Vertical Sequence-mining Algorithm: SPADE

In this Project we use a particular sequential pattern mining algorithm, Sequential Pattern Discovery using Equivalent classes (SPADE) and use a synthetic data-set which is similar to the one given in the problem statement to derive frequent item-set.

The given Problem statement is, a data-set containing cities, and trucks that drive from city to city (which is tracked using EventID), shipping products in a sequence. Each truck
can carry a random number of products to each city,  for example: tomato, milk, and bread. For instance, a truck trip description can be:
<Trento, Bolzano, AX456, (milk, honey, butter, tomatoes)>/n
This means that the truck AX456 went from Trento to Bolzano carrying milk, honey, butter and tomatoes.

each truck can have a number of routes, for instance:

<Innsbruck, Trento, AX456, (milk, pens, butter)>
<Trento, Bolzano, AX456, (milk, honey, butter, tomatoes)>
<Bolzano, Padova, AX456, (butter, pens, tomatoes)>
To elaborate the above example, Truck AX456 on each trip has shipped different product, the task we are going to solve is to find frequent product deliveries which are carried out
in sequence.

#
This Project was part of the course Data Mining offered in University Of Trento in Italy
