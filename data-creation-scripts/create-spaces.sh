#! /bin/bash
echo Creating spaces

# Site Bravo spaces
# Nodes
dotnet run "g.addV('Space').property('id', 'Bravo BCUs').property('name', 'Bravo BCUs')"
dotnet run "g.addV('Space').property('id', 'Bravo HW System').property('name', 'Bravo HW System')"
# Edges
dotnet run "g.V('Bravo BCUs').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo HW System').addE('belongsto').to(g.V('site-b'))"
