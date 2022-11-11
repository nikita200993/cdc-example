ARG KAFKA_JDBC_VERSION=5.3.2
FROM debezium/connect:1.9

ENV KAFKA_CONNECT_JDBC_DIR=$KAFKA_CONNECT_PLUGINS_DIR/kafka-connect-jdbc

# These should point to the driver version to be used
ENV MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs \
    ORACLE_JDBC_REPO="com/oracle/database/jdbc" \
    ORACLE_JDBC_GROUP="ojdbc8" \
    ORACLE_JDBC_VERSION="21.6.0.0" \
    ORACLE_JDBC_MD5=312e6f4ec9932bbf74a4461669970c4b


RUN docker-maven-download central "$ORACLE_JDBC_REPO" "$ORACLE_JDBC_GROUP" "$ORACLE_JDBC_VERSION" "$ORACLE_JDBC_MD5"
RUN mkdir $KAFKA_CONNECT_JDBC_DIR &&\
  cd $KAFKA_CONNECT_JDBC_DIR &&\
  curl -sO https://packages.confluent.io/maven/io/confluent/kafka-connect-jdbc/$KAFKA_JDBC_VERSION/kafka-connect-jdbc-$KAFKA_JDBC_VERSION.jar
