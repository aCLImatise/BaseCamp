version 1.0

task CactusPreprocess {
  input {
    Boolean logoffLogoff
    Boolean logLogCritical
    Boolean logLogError
    Boolean logLogWarning
    Boolean loginfoLoginfo
    Boolean logLogDebug
    String loglevelLoglevel
    String logLogFile
    Boolean rotatingRotatingLogging
    String workdirWorkdir
    Boolean statsStats
    String cleanClean
    String cleanCleanWorkdir
    Boolean clusterClusterStats
    Boolean restartRestart
    String batchBatchSystem
    Boolean disableDisableHotDeployment
    String parasolParasolCommand
    String parasolParasolMaxBatches
    String scaleScale
    Boolean linkLinkImports
    String mesosMesosMaster
    String provisionerProvisioner
    String nodeNodeTypes
    String nodeNodeOptions
    Int minMinNodes
    Int maxMaxNodes
    String alphaAlphaPacking
    String betaBetaInertia
    String scaleScaleInterval
    String preemptPreemptAbleCompensation
    String nodeNodeStorage
    Boolean metricsMetrics
    Int maxMaxServiceJobs
    Int maxMaxPreemptAbleServiceJobs
    String deadlockDeadlockWait
    String stateStatePollingWait
    Int maxMaxCores
    Int maxMaxMemory
    Int maxMaxDisk
    String retryRetryCount
    Int maxMaxJobDuration
    String rescueRescueJobsFrequency
    Boolean disableDisableCaching
    Int maxMaxLogFileSize
    Boolean writeWriteLogs
    Boolean writeWriteLogsGzip
    Boolean realRealTimeLogging
    String sseSseKey
    String cseCseKey
    String setenvSetenv
    String serviceServicePollingInterval
    Boolean debugDebugWorker
    String badBadWorker
    String badBadWorkerFailInterval
    String? outputOutputSequenceDir
    String? inputInputSequences
    String? jobJobStore
  }
  command <<<
    cactus_preprocess \
      ~{outputOutputSequenceDir} \
      ~{jobJobStore} \
      ~{true="--logOff" false="" logoffLogoff} \
      ~{true="--logCritical" false="" logLogCritical} \
      ~{true="--logError" false="" logLogError} \
      ~{true="--logWarning" false="" logLogWarning} \
      ~{true="--logInfo" false="" loginfoLoginfo} \
      ~{true="--logDebug" false="" logLogDebug} \
      ~{if defined(loglevelLoglevel) then ("--logLevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logFile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotatingRotatingLogging} \
      ~{if defined(workdirWorkdir) then ("--workDir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{true="--stats" false="" statsStats} \
      ~{if defined(cleanClean) then ("--clean " +  '"' + cleanClean + '"') else ""} \
      ~{if defined(cleanCleanWorkdir) then ("--cleanWorkDir " +  '"' + cleanCleanWorkdir + '"') else ""} \
      ~{true="--clusterStats" false="" clusterClusterStats} \
      ~{true="--restart" false="" restartRestart} \
      ~{if defined(batchBatchSystem) then ("--batchSystem " +  '"' + batchBatchSystem + '"') else ""} \
      ~{true="--disableHotDeployment" false="" disableDisableHotDeployment} \
      ~{if defined(parasolParasolCommand) then ("--parasolCommand " +  '"' + parasolParasolCommand + '"') else ""} \
      ~{if defined(parasolParasolMaxBatches) then ("--parasolMaxBatches " +  '"' + parasolParasolMaxBatches + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{true="--linkImports" false="" linkLinkImports} \
      ~{if defined(mesosMesosMaster) then ("--mesosMaster " +  '"' + mesosMesosMaster + '"') else ""} \
      ~{if defined(provisionerProvisioner) then ("--provisioner " +  '"' + provisionerProvisioner + '"') else ""} \
      ~{if defined(nodeNodeTypes) then ("--nodeTypes " +  '"' + nodeNodeTypes + '"') else ""} \
      ~{if defined(nodeNodeOptions) then ("--nodeOptions " +  '"' + nodeNodeOptions + '"') else ""} \
      ~{if defined(minMinNodes) then ("--minNodes " +  '"' + minMinNodes + '"') else ""} \
      ~{if defined(maxMaxNodes) then ("--maxNodes " +  '"' + maxMaxNodes + '"') else ""} \
      ~{if defined(alphaAlphaPacking) then ("--alphaPacking " +  '"' + alphaAlphaPacking + '"') else ""} \
      ~{if defined(betaBetaInertia) then ("--betaInertia " +  '"' + betaBetaInertia + '"') else ""} \
      ~{if defined(scaleScaleInterval) then ("--scaleInterval " +  '"' + scaleScaleInterval + '"') else ""} \
      ~{if defined(preemptPreemptAbleCompensation) then ("--preemptableCompensation " +  '"' + preemptPreemptAbleCompensation + '"') else ""} \
      ~{if defined(nodeNodeStorage) then ("--nodeStorage " +  '"' + nodeNodeStorage + '"') else ""} \
      ~{true="--metrics" false="" metricsMetrics} \
      ~{if defined(maxMaxServiceJobs) then ("--maxServiceJobs " +  '"' + maxMaxServiceJobs + '"') else ""} \
      ~{if defined(maxMaxPreemptAbleServiceJobs) then ("--maxPreemptableServiceJobs " +  '"' + maxMaxPreemptAbleServiceJobs + '"') else ""} \
      ~{if defined(deadlockDeadlockWait) then ("--deadlockWait " +  '"' + deadlockDeadlockWait + '"') else ""} \
      ~{if defined(stateStatePollingWait) then ("--statePollingWait " +  '"' + stateStatePollingWait + '"') else ""} \
      ~{if defined(maxMaxCores) then ("--maxCores " +  '"' + maxMaxCores + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--maxMemory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{if defined(maxMaxDisk) then ("--maxDisk " +  '"' + maxMaxDisk + '"') else ""} \
      ~{if defined(retryRetryCount) then ("--retryCount " +  '"' + retryRetryCount + '"') else ""} \
      ~{if defined(maxMaxJobDuration) then ("--maxJobDuration " +  '"' + maxMaxJobDuration + '"') else ""} \
      ~{if defined(rescueRescueJobsFrequency) then ("--rescueJobsFrequency " +  '"' + rescueRescueJobsFrequency + '"') else ""} \
      ~{true="--disableCaching" false="" disableDisableCaching} \
      ~{if defined(maxMaxLogFileSize) then ("--maxLogFileSize " +  '"' + maxMaxLogFileSize + '"') else ""} \
      ~{true="--writeLogs" false="" writeWriteLogs} \
      ~{true="--writeLogsGzip" false="" writeWriteLogsGzip} \
      ~{true="--realTimeLogging" false="" realRealTimeLogging} \
      ~{if defined(sseSseKey) then ("--sseKey " +  '"' + sseSseKey + '"') else ""} \
      ~{if defined(cseCseKey) then ("--cseKey " +  '"' + cseCseKey + '"') else ""} \
      ~{if defined(setenvSetenv) then ("--setEnv " +  '"' + setenvSetenv + '"') else ""} \
      ~{if defined(serviceServicePollingInterval) then ("--servicePollingInterval " +  '"' + serviceServicePollingInterval + '"') else ""} \
      ~{true="--debugWorker" false="" debugDebugWorker} \
      ~{if defined(badBadWorker) then ("--badWorker " +  '"' + badBadWorker + '"') else ""} \
      ~{if defined(badBadWorkerFailInterval) then ("--badWorkerFailInterval " +  '"' + badBadWorkerFailInterval + '"') else ""} \
      ~{inputInputSequences}
  >>>
}