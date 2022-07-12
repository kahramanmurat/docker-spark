FROM openjdk:8-alpine
RUN apk --update add wget tar bash
RUN wget https://downloads.apache.org/spark/spark-3.0.3/spark-3.0.3-bin-hadoop2.7.tgz
RUN tar -xzf spark-3.0.3-bin-hadoop2.7.tgz && \
    mv spark-3.0.3-bin-hadoop2.7 /spark
COPY start-master.sh start-master.sh
COPY start-worker.sh /start-worker.sh