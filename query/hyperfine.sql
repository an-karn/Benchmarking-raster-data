
#Geoserver queries
hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2015&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2014&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2013&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2012&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2011&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2010&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2009&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2008&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2007&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2006&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2005&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2004&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:serve_2003&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=benchmark:test_serve_2002&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

#Rasdaman_Queries
hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2015&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2014&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2013&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2012&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2011&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2010&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2009&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2008&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2007&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2006&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2005&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2004&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2003&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"

hyperfine "GET http://0.0.0.0:4040/geoserver/ows?request=GetMap&
service=WMS&version=1.3.0&layers=AverageChloroColor2002&
styles=&srs=EPSG:4326&width=750&height=500
&format=image/png&bbox=-180,-90,180,90;"