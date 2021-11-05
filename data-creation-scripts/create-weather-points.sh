#! /bin/bash
echo Creating weather points

echo Creating Alpha weather points
# Site Alpha weather points
# Nodes
dotnet run "g.addV('Weather').property('id', 'Hugo, CO Temp').property('name', 'Hugo, CO Temp').property('kind', 'number').property('tz', 'Denver').property('unit', 'F')"
dotnet run "g.addV('Weather').property('id', 'Hugo, CO Sunrise').property('name', 'Hugo, CO Sunrise').property('kind', 'bool').property('tz', 'Denver')"
dotnet run "g.addV('Weather').property('id', 'Hugo, CO Condition').property('name', 'Hugo, CO Condition').property('kind', 'str').property('tz', 'Denver')"
# Edges
dotnet run "g.V('Hugo, CO Temp').addE('belongsto').to(g.V('site-a'))"
dotnet run "g.V('Hugo, CO Sunrise').addE('belongsto').to(g.V('site-a'))"
dotnet run "g.V('Hugo, CO Condition').addE('belongsto').to(g.V('site-a'))"

echo Creating Bravo weather points
# Site Bravo weather points
# Nodes
dotnet run "g.addV('Weather').property('id', 'Fort Wayne, IN Temp').property('name', 'Fort Wayne, IN Temp').property('kind', 'number').property('tz', 'Indianapolis').property('unit', 'F')"
dotnet run "g.addV('Weather').property('id', 'Fort Wayne, IN Sunrise').property('name', 'Fort Wayne, IN Sunrise').property('kind', 'bool').property('tz', 'Indianapolis')"
dotnet run "g.addV('Weather').property('id', 'Fort Wayne, IN Condition').property('name', 'Fort Wayne, IN Condition').property('kind', 'str').property('tz', 'Indianapolis')"
# Edges
dotnet run "g.V('Fort Wayne, IN Temp').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Fort Wayne, IN Sunrise').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Fort Wayne, IN Condition').addE('belongsto').to(g.V('site-b'))"
