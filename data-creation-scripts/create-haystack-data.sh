#! /bin/bash
echo Creating haystack data

cd ../GremlinApp/

./../data-creation-scripts/create-sites.sh
./../data-creation-scripts/create-weather-points.sh
./../data-creation-scripts/create-spaces.sh
./../data-creation-scripts/create-equips.sh

# Query for returned data
dotnet run "g.V().count()"
dotnet run "g.E().count()"
