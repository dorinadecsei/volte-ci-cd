FROM ubuntu:20.04
RUN apt-get update && apt-get install -y sipp
COPY tests/test_scenario.xml /tests/test_scenario.xml
CMD ["sipp", "-sf", "/tests/test_scenario.xml", "-i", "192.168.1.1"]
 
