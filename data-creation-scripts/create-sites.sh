#! /bin/bash
echo Creating Sites

# Create site A
dotnet run "g.addV('Site').property('id', 'site-a').property('name', 'Alpha').property('area', '151455ft2').property('geoAddr', '123 Prarie St, Hugo, CO 80821').property('geoCity', 'Hugo').property('geoCoord', 'C(39.04532,-103.57159)').property('geoCountry', 'US').property('geoElevation', '2956m').property('geoPostalCode', '80821').property('geoState', 'CO').property('geoStreet', '123 Prarie St').property('tz', 'Denver')"
# Create site B
dotnet run "g.addV('Site').property('id', 'site-b').property('name', 'Bravo').property('area', '78000ft2').property('geoAddr', '123 Some Rd, Fort Wayne, IN 46900').property('geoCity', 'Fort Wayne').property('geoCountry', 'US').property('geoCounty', 'US').property('geoPostalCode', '46900').property('geoState', 'IN').property('geoStreet', '123 Some Rd').property('primaryFunction', 'Hospital (General Medical & Surgical)').property('tz', 'Chicago').property('yearBuilt', '2000')"
