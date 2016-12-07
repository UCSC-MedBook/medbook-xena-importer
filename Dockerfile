FROM openjdk:7
ADD https://genome-cancer.ucsc.edu/download/public/get-xena/ucsc_xena_0_21_0.tar.gz /downloads/ucsc_xena_0_21_0.tar.gz
RUN tar xf /downloads/ucsc_xena_0_21_0.tar.gz
CMD java -jar /ucsc_xena/cavm-0.21.0-standalone.jar --no-gui --port 7222 --host 0.0.0.0 --logfile /logs/xena.log
