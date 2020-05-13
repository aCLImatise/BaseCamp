version 1.0

task CaperServer {
  input {
    Boolean dryDryRun
    Boolean debugDebug
    String portPort
    String ipIp
    Boolean noNoServerHeartbeat
    String serverServerHeartbeatFile
    String serverServerHeartbeatTimeout
    String javaJavaHeapServer
    String backendBackend
    String dbDb
    String dbDbTimeout
    File fileFileDb
    String mysqlMysqlDbIp
    String mysqlMysqlDbPort
    String mysqlMysqlDbUser
    String mysqlMysqlDbPassword
    String mysqlMysqlDbName
    String postgresqlPostgresqlDbIp
    String postgresqlPostgresqlDbPort
    String postgresqlPostgresqlDbUser
    String postgresqlPostgresqlDbPassword
    String postgresqlPostgresqlDbName
    String cromwellCromwell
    Int maxMaxConcurrentTasks
    Int maxMaxConcurrentWorkflows
    Int maxMaxRetries
    Boolean disableDisableCallCaching
    String backendBackendFile
    Boolean softSoftGlobOutput
    String outOutDir
    String tmpTmpDir
    String gcpGcpPrj
    String gcpGcpZones
    String gcpGcpCallCachingDupStrat
    String outOutGcsBucket
    String tmpTmpGcsBucket
    String awsAwsBatchArn
    String awsAwsRegion
    String outOutS3Bucket
    String tmpTmpS3Bucket
  }
  command <<<
    caper server \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(ipIp) then ("--ip " +  '"' + ipIp + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" noNoServerHeartbeat} \
      ~{if defined(serverServerHeartbeatFile) then ("--server-heartbeat-file " +  '"' + serverServerHeartbeatFile + '"') else ""} \
      ~{if defined(serverServerHeartbeatTimeout) then ("--server-heartbeat-timeout " +  '"' + serverServerHeartbeatTimeout + '"') else ""} \
      ~{if defined(javaJavaHeapServer) then ("--java-heap-server " +  '"' + javaJavaHeapServer + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(dbDbTimeout) then ("--db-timeout " +  '"' + dbDbTimeout + '"') else ""} \
      ~{if defined(fileFileDb) then ("--file-db " +  '"' + fileFileDb + '"') else ""} \
      ~{if defined(mysqlMysqlDbIp) then ("--mysql-db-ip " +  '"' + mysqlMysqlDbIp + '"') else ""} \
      ~{if defined(mysqlMysqlDbPort) then ("--mysql-db-port " +  '"' + mysqlMysqlDbPort + '"') else ""} \
      ~{if defined(mysqlMysqlDbUser) then ("--mysql-db-user " +  '"' + mysqlMysqlDbUser + '"') else ""} \
      ~{if defined(mysqlMysqlDbPassword) then ("--mysql-db-password " +  '"' + mysqlMysqlDbPassword + '"') else ""} \
      ~{if defined(mysqlMysqlDbName) then ("--mysql-db-name " +  '"' + mysqlMysqlDbName + '"') else ""} \
      ~{if defined(postgresqlPostgresqlDbIp) then ("--postgresql-db-ip " +  '"' + postgresqlPostgresqlDbIp + '"') else ""} \
      ~{if defined(postgresqlPostgresqlDbPort) then ("--postgresql-db-port " +  '"' + postgresqlPostgresqlDbPort + '"') else ""} \
      ~{if defined(postgresqlPostgresqlDbUser) then ("--postgresql-db-user " +  '"' + postgresqlPostgresqlDbUser + '"') else ""} \
      ~{if defined(postgresqlPostgresqlDbPassword) then ("--postgresql-db-password " +  '"' + postgresqlPostgresqlDbPassword + '"') else ""} \
      ~{if defined(postgresqlPostgresqlDbName) then ("--postgresql-db-name " +  '"' + postgresqlPostgresqlDbName + '"') else ""} \
      ~{if defined(cromwellCromwell) then ("--cromwell " +  '"' + cromwellCromwell + '"') else ""} \
      ~{if defined(maxMaxConcurrentTasks) then ("--max-concurrent-tasks " +  '"' + maxMaxConcurrentTasks + '"') else ""} \
      ~{if defined(maxMaxConcurrentWorkflows) then ("--max-concurrent-workflows " +  '"' + maxMaxConcurrentWorkflows + '"') else ""} \
      ~{if defined(maxMaxRetries) then ("--max-retries " +  '"' + maxMaxRetries + '"') else ""} \
      ~{true="--disable-call-caching" false="" disableDisableCallCaching} \
      ~{if defined(backendBackendFile) then ("--backend-file " +  '"' + backendBackendFile + '"') else ""} \
      ~{true="--soft-glob-output" false="" softSoftGlobOutput} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(gcpGcpPrj) then ("--gcp-prj " +  '"' + gcpGcpPrj + '"') else ""} \
      ~{if defined(gcpGcpZones) then ("--gcp-zones " +  '"' + gcpGcpZones + '"') else ""} \
      ~{if defined(gcpGcpCallCachingDupStrat) then ("--gcp-call-caching-dup-strat " +  '"' + gcpGcpCallCachingDupStrat + '"') else ""} \
      ~{if defined(outOutGcsBucket) then ("--out-gcs-bucket " +  '"' + outOutGcsBucket + '"') else ""} \
      ~{if defined(tmpTmpGcsBucket) then ("--tmp-gcs-bucket " +  '"' + tmpTmpGcsBucket + '"') else ""} \
      ~{if defined(awsAwsBatchArn) then ("--aws-batch-arn " +  '"' + awsAwsBatchArn + '"') else ""} \
      ~{if defined(awsAwsRegion) then ("--aws-region " +  '"' + awsAwsRegion + '"') else ""} \
      ~{if defined(outOutS3Bucket) then ("--out-s3-bucket " +  '"' + outOutS3Bucket + '"') else ""} \
      ~{if defined(tmpTmpS3Bucket) then ("--tmp-s3-bucket " +  '"' + tmpTmpS3Bucket + '"') else ""}
  >>>
}