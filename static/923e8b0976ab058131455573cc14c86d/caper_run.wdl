version 1.0

task CaperRun {
  input {
    Boolean dryDryRun
    Boolean debugDebug
    String inputsInputs
    String optionsOptions
    String labelsLabels
    String importsImports
    String strStrLabel
    Boolean holdHold
    String singularitySingularityCacheDir
    Boolean useUseGsUtilForS3
    Boolean noNoDeepcopy
    Boolean ignoreIgnoreWomTool
    String womWomTool
    String metadataMetadataOutput
    String javaJavaHeapRun
    String backendBackend
    Boolean dockerDocker
    Boolean singularitySingularity
    Boolean noNoBuildSingularity
    String slurSlurMPartition
    String slurSlurMAccount
    String slurSlurMExtraParam
    String sgeSgePe
    String sgeSgeQueue
    String sgeSgeExtraParam
    String pbsPbsQueue
    String pbsPbsExtraParam
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
    String? wdlWdl
  }
  command <<<
    caper run \
      ~{wdlWdl} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(inputsInputs) then ("--inputs " +  '"' + inputsInputs + '"') else ""} \
      ~{if defined(optionsOptions) then ("--options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(importsImports) then ("--imports " +  '"' + importsImports + '"') else ""} \
      ~{if defined(strStrLabel) then ("--str-label " +  '"' + strStrLabel + '"') else ""} \
      ~{true="--hold" false="" holdHold} \
      ~{if defined(singularitySingularityCacheDir) then ("--singularity-cachedir " +  '"' + singularitySingularityCacheDir + '"') else ""} \
      ~{true="--use-gsutil-for-s3" false="" useUseGsUtilForS3} \
      ~{true="--no-deepcopy" false="" noNoDeepcopy} \
      ~{true="--ignore-womtool" false="" ignoreIgnoreWomTool} \
      ~{if defined(womWomTool) then ("--womtool " +  '"' + womWomTool + '"') else ""} \
      ~{if defined(metadataMetadataOutput) then ("--metadata-output " +  '"' + metadataMetadataOutput + '"') else ""} \
      ~{if defined(javaJavaHeapRun) then ("--java-heap-run " +  '"' + javaJavaHeapRun + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{true="--docker" false="" dockerDocker} \
      ~{true="--singularity" false="" singularitySingularity} \
      ~{true="--no-build-singularity" false="" noNoBuildSingularity} \
      ~{if defined(slurSlurMPartition) then ("--slurm-partition " +  '"' + slurSlurMPartition + '"') else ""} \
      ~{if defined(slurSlurMAccount) then ("--slurm-account " +  '"' + slurSlurMAccount + '"') else ""} \
      ~{if defined(slurSlurMExtraParam) then ("--slurm-extra-param " +  '"' + slurSlurMExtraParam + '"') else ""} \
      ~{if defined(sgeSgePe) then ("--sge-pe " +  '"' + sgeSgePe + '"') else ""} \
      ~{if defined(sgeSgeQueue) then ("--sge-queue " +  '"' + sgeSgeQueue + '"') else ""} \
      ~{if defined(sgeSgeExtraParam) then ("--sge-extra-param " +  '"' + sgeSgeExtraParam + '"') else ""} \
      ~{if defined(pbsPbsQueue) then ("--pbs-queue " +  '"' + pbsPbsQueue + '"') else ""} \
      ~{if defined(pbsPbsExtraParam) then ("--pbs-extra-param " +  '"' + pbsPbsExtraParam + '"') else ""} \
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