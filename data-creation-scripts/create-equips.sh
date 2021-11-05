#! /bin/bash
echo Creating equips

echo Creating Alpha Equips
# Site Alpha equips
# Nodes
dotnet run "g.addV('Equip').property('id', 'Alpha Airside AHU-2').property('name', 'Alpha Airside AHU-2')"
dotnet run "g.addV('Equip').property('id', 'Alpha Airside AHU-3').property('name', 'Alpha Airside AHU-3')"
dotnet run "g.addV('Equip').property('id', 'Alpha Utility Bills Elec Meter 1').property('name', 'Alpha Utility Bills Elec Meter 1')"
dotnet run "g.addV('Equip').property('id', 'Alpha Utility Bills Gas Meter 3').property('name', 'Alpha Utility Bills Gas Meter 3')"
dotnet run "g.addV('Equip').property('id', 'Alpha Waterside Hot Water Plant').property('name', 'Alpha Waterside Hot Water Plant')"
# Edges
dotnet run "g.V('Alpha Airside AHU-2').addE('belongsto').to(g.V('site-a'))"
dotnet run "g.V('Alpha Airside AHU-3').addE('belongsto').to(g.V('site-a'))"
dotnet run "g.V('Alpha Utility Bills Elec Meter 1').addE('belongsto').to(g.V('site-a'))"
dotnet run "g.V('Alpha Utility Bills Gas Meter 3').addE('belongsto').to(g.V('site-a'))"
dotnet run "g.V('Alpha Waterside Hot Water Plant').addE('belongsto').to(g.V('site-a'))"

echo Creating Bravo Equips
# Site Bravo equips
# Nodes
dotnet run "g.addV('Equip').property('id', 'Bravo BCU-1').property('name', 'Bravo BCU-1')"
dotnet run "g.addV('Equip').property('id', 'Bravo BCU-2').property('name', 'Bravo BCU-2')"
dotnet run "g.addV('Equip').property('id', 'Bravo Boiler 1').property('name', 'Bravo Boiler 1')"
dotnet run "g.addV('Equip').property('id', 'Bravo Boiler 2').property('name', 'Bravo Boiler 2')"
dotnet run "g.addV('Equip').property('id', 'Bravo Boiler Plant').property('name', 'Bravo Boiler Plant')"
dotnet run "g.addV('Equip').property('id', 'Bravo HHW Pump 1').property('name', 'Bravo HHW Pump 1')"
dotnet run "g.addV('Equip').property('id', 'Bravo HHW Pump 2').property('name', 'Bravo HHW Pump 2')"
# Edges
dotnet run "g.V('Bravo BCU-1').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo BCU-1').addE('belongsto').to(g.V('Bravo BCUs'))"
dotnet run "g.V('Bravo BCU-2').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo BCU-2').addE('belongsto').to(g.V('Bravo BCUs'))"
dotnet run "g.V('Bravo Boiler 1').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo Boiler 1').addE('belongsto').to(g.V('Bravo HW System'))"
dotnet run "g.V('Bravo Boiler 2').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo Boiler 2').addE('belongsto').to(g.V('Bravo HW System'))"
dotnet run "g.V('Bravo Boiler Plant').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo Boiler Plant').addE('belongsto').to(g.V('Bravo HW System'))"
dotnet run "g.V('Bravo HHW Pump 1').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo HHW Pump 1').addE('belongsto').to(g.V('Bravo HW System'))"
dotnet run "g.V('Bravo HHW Pump 2').addE('belongsto').to(g.V('site-b'))"
dotnet run "g.V('Bravo HHW Pump 2').addE('belongsto').to(g.V('Bravo HW System'))"
