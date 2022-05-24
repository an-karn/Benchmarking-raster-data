# Benchmarking raster data for geoserver and rasdaman 
We hereby performed benchmarking tests on geospatial platforms. We generally performed WMS request to geospatial platform Rasdaman and Geoserver and observed which platform is more efficient in performing geospatial operations. To do so, we varied various parameters, send request and saw the outcomes.

## Prequisites
You must have geoserver and rasdaman installed in your system.<br />
To install geoserver: https://docs.geoserver.org/stable/en/user/installation/linux.html <br />
To install rasdaman: https://doc.rasdaman.org/02_inst-guide.html#installation <br />
Once you have installed geoserver and rasdaman,Now we can proceed to the benchmarking.

## File structure<br />
Here is the image of file structure of the given github file.

![test](https://user-images.githubusercontent.com/73000507/170036836-896793a3-6731-4b20-8cba-eaddfe76e7fe.png)

The config files consist of configuration files written in Jmeter. These files are important in order to run Jmeter benchmarking test. Then, we have coverage which consists of ingredient.json file which is written to upload coverages to rasdaman. Multiscale folder consists of files needed to run multiscale benchmark tests. Then, we have packages which consist of thesis file and gantt chart diagram for the given thesis. The query folder consist of the queries that I run in benchmarking tools such as Jmeter and hyperfine. Result_benchmark consists of result obtained from benchmarking tools. Then we have test_data which consists of test data which is used to test benchmarking tools.

## Installing Jmeter and Hyperfine 
To install Jmeter:
Java is the prerequisite for installing Jmeter. So, at first check if you have Java installed. If you have Java installed then type folowing command:
```
sudo apt install openjdk-11-jre-headless
sudo apt install openjdk-11-jdk-headless

```
After executing these commands, download Jmeter from following link: https://jmeter.apache.org/download_jmeter.cgi
Extract the file and go to the extracted file, then bin and type:
```
sh jmeter.sh
```
Hence, you can see Jmeter is installed <br />
To install hyperfine:
```
wget https://github.com/sharkdp/hyperfine/releases/download/v1.13.0/hyperfine_1.13.0_amd64.deb
sudo dpkg -i hyperfine_1.13.0_amd64.deb
```
## Uploading Coverages
It is easy to upload coverage in geoserver. Follow the steps as mentioned in the thesis paper and you can easily upload coverage in geoserver. In rasdaman you need ingredient.json file to upload coverages. You can go to coverage folder and see ingredient.json file There you need to change the path to the file that need to ne uploaded
```
"input": {
    "coverage_id": "AverageChloroColor2002_15",
    "paths": ["COLOR*.TIFF"]
  }
```
The coverage_id defines name of coverage. Also, recipe defines how two or more tiff files are combined. For this test, we define recipe to be irregular time series. So, after editing the ingredient.json to point to folder containing test data. We can open the coverage folder in terminal and run command:
```
wcst_import.sh ingredient.json
```
And this will ask for confirmation and then upload all the files as coverages in rasdaman.
## Setting up benchmark in Jmeter
So, now we open Jmeter and load the config files from config_files folder.You can open Jmeter and go to open files and open HTTP Request Geoserver.jmx and that will load all the configuration needed for your system to run benchmark on Geoserver. Once loaded you need to adjust the HTTP request, and layer name and then run the test for specified number of time. For rasdaman also, we need to adjust the http request and layer name parameter and everything else remains same and run the tests. See thesis documentation for detailed description.
## Creating files for multiscale test
Since, till now we just vary datasize by keeping all the other parameters constant. Now,we want to vary other parameters by keeping datasize constant and see the results. So, for that I wrote a code in python that can take number of data needed, minimum and maximum value of parameters as input and will generate a file as output. So, we go to folder multiscale and type command
```
python wms_request.py -count 100 -region -180 -90 180 90 -minsize 256 256 -maxsize 1024 1024 -minres 0.100 -maxres 0.224 -srs 4326

```
And it will generate file called 4436.csv which will have 100 different values for bounding boxes, width and height. We will rename file as multiscale.csv for convenience
## Multiscale test in Jmeter
We will now load Multiscale.jmx to adjust the parameters for http request. Right click on the Loop Controller tree node and add a new CSV Data Set Config element and then you will see filename, thereby add the file multiscale.csv i.e. the file we have created and run the test.
As you run single scale or multiscale tests in Jmeter, it will create queries and pass to the server. The queries created by Jmeter is compiled into file jmeter.sql under query folder.
Reference: https://geoserver.geo-solutions.it/multidim/enterprise/jmeter.html
## Multiscale test in Hyperfine
So, now we take the query send by Jmeter to run benchmark test on query using hyperfine. So, each hyperfine request is in this format
```
hyperfine "GET http://0.0.0.0:4040/geoserver/owsrequest=GetMap&service=WMS&version=1.3.0&layers=benchmark:serve_2015&styles=&srs=EPSG:4326&width=750&height=500&format=image/png&bbox=-180,-90,180,90"
hyperfine --warmup 3 "GET http://0.0.0.0:4040/geoserver/owsrequest=GetMap&service=WMS&version=1.3.0&layers=benchmark:serve_2015&styles=&srs=EPSG:4326&width=750&height=500&format=image/png&bbox=-180,-90,180,90"
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' "GET http://0.0.0.0:4040/geoserver/owsrequest=GetMap&service=WMS&version=1.3.0&layers=benchmark:serve_2015&styles=&srs=EPSG:4326&width=750&height=500&format=image/png&bbox=-180,-90,180,90"
```
The first query just runs jmeter query using hyperfine. The second one runs it for warm cache and other one runs it for cold cache.
## Results
So, now after running the result, the record are recorded in result_benchmark folder. The folder result_geoserver consist result file for each server geoserver and rasdaman. As you open, you can see Final_result.csv containing the aggragate result for both servers. Then you have result_graphs where we combine graphs for different server and saved. Then we have result geoserver and result rasdaman. In each folder, we have yearwise folder containing the results. Every yearwise folder contains a csv file that contains result generated by Jmeter. Then, we have json file which contains result generated by hyperfine. All the graph are made in veusz and corresponding veusz files are also attached. 
## Conclusion
So, here we present a simple algorithm to benchmark geospatial platforms. By following this path, anyone can benchmark geospatial platforms through various benchmarking tools and average the results to see which platform is more efficient in performing geospatial operations. According to our results, rasdaman was more efficient in performing geospatial operation than geoserver
