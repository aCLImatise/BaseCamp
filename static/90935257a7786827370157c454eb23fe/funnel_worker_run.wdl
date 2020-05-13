version 1.0

task FunnelWorkerRun {
  input {
    String taskbase64Taskbase64
    String taskTaskFile
    String taskTaskId
    Boolean amazonAmazonS3
    Boolean amazonAmazonS3
    Boolean boltBoltDb
    String computeCompute
    String databaseDatabase
    Boolean datastoreDatastore
    Boolean dynamoDynamoDb
    Boolean dynamoDynamoDb
    Boolean dynamoDynamoDb
    Boolean elasticElastic
    Boolean elasticElastic
    String eventEventWriters
    Boolean googleGoogleStorage
    Boolean httpHttpStorage
    Boolean httpHttpStorage
    Boolean kafkaKafka
    Boolean kafkaKafka
    Boolean localLocalStorage
    Boolean localLocalStorage
    Boolean loggerLogger
    Boolean loggerLogger
    Boolean loggerLogger
    Boolean mongoMongoDb
    Boolean mongoMongoDb
    Boolean mongoMongoDb
    Boolean nodeNode
    Boolean nodeNode
    Boolean nodeNode
    Boolean nodeNode
    Boolean nodeNode
    Boolean rpcclientRpcclient
    Boolean rpcclientRpcclient
    Boolean rpcclientRpcclient
    Boolean serverServer
    Boolean serverServer
    Boolean serverServer
    Boolean serverServer
    Boolean swiftSwift
    Boolean swiftSwift
    Boolean swiftSwift
    Boolean workerWorker
    Boolean workerWorker
    Boolean workerWorker
    Boolean workerWorker
    Boolean workerWorker
    String configConfig
    String? flagsFlags
  }
  command <<<
    funnel worker run \
      ~{flagsFlags} \
      ~{if defined(taskbase64Taskbase64) then ("--taskBase64 " +  '"' + taskbase64Taskbase64 + '"') else ""} \
      ~{if defined(taskTaskFile) then ("--taskFile " +  '"' + taskTaskFile + '"') else ""} \
      ~{if defined(taskTaskId) then ("--taskID " +  '"' + taskTaskId + '"') else ""} \
      ~{true="--AmazonS3" false="" amazonAmazonS3} \
      ~{true="--AmazonS3" false="" amazonAmazonS3} \
      ~{true="--BoltDB" false="" boltBoltDb} \
      ~{if defined(computeCompute) then ("--Compute " +  '"' + computeCompute + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--Database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--Datastore" false="" datastoreDatastore} \
      ~{true="--DynamoDB" false="" dynamoDynamoDb} \
      ~{true="--DynamoDB" false="" dynamoDynamoDb} \
      ~{true="--DynamoDB" false="" dynamoDynamoDb} \
      ~{true="--Elastic" false="" elasticElastic} \
      ~{true="--Elastic" false="" elasticElastic} \
      ~{if defined(eventEventWriters) then ("--EventWriters " +  '"' + eventEventWriters + '"') else ""} \
      ~{true="--GoogleStorage" false="" googleGoogleStorage} \
      ~{true="--HTTPStorage" false="" httpHttpStorage} \
      ~{true="--HTTPStorage" false="" httpHttpStorage} \
      ~{true="--Kafka" false="" kafkaKafka} \
      ~{true="--Kafka" false="" kafkaKafka} \
      ~{true="--LocalStorage" false="" localLocalStorage} \
      ~{true="--LocalStorage" false="" localLocalStorage} \
      ~{true="--Logger" false="" loggerLogger} \
      ~{true="--Logger" false="" loggerLogger} \
      ~{true="--Logger" false="" loggerLogger} \
      ~{true="--MongoDB" false="" mongoMongoDb} \
      ~{true="--MongoDB" false="" mongoMongoDb} \
      ~{true="--MongoDB" false="" mongoMongoDb} \
      ~{true="--Node" false="" nodeNode} \
      ~{true="--Node" false="" nodeNode} \
      ~{true="--Node" false="" nodeNode} \
      ~{true="--Node" false="" nodeNode} \
      ~{true="--Node" false="" nodeNode} \
      ~{true="--RPCClient" false="" rpcclientRpcclient} \
      ~{true="--RPCClient" false="" rpcclientRpcclient} \
      ~{true="--RPCClient" false="" rpcclientRpcclient} \
      ~{true="--Server" false="" serverServer} \
      ~{true="--Server" false="" serverServer} \
      ~{true="--Server" false="" serverServer} \
      ~{true="--Server" false="" serverServer} \
      ~{true="--Swift" false="" swiftSwift} \
      ~{true="--Swift" false="" swiftSwift} \
      ~{true="--Swift" false="" swiftSwift} \
      ~{true="--Worker" false="" workerWorker} \
      ~{true="--Worker" false="" workerWorker} \
      ~{true="--Worker" false="" workerWorker} \
      ~{true="--Worker" false="" workerWorker} \
      ~{true="--Worker" false="" workerWorker} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""}
  >>>
}