version 1.0

task ToilCwlRunner {
  input {
    String tmpdirTmpdirPrefix
    String tmpTmpOutdirPrefix
    Boolean forceForceDockerPull
    Boolean noNoMatchUser
    Boolean noNoReadOnly
    Boolean strictStrictMemoryLimit
    Boolean relaxRelaxPathChecks
    String defaultDefaultContainer
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
    Boolean noNoStdoutErr
    Boolean statsStats
    String cleanClean
    String cleanCleanWorkdir
    Boolean clusterClusterStats
    Boolean restartRestart
    String batchBatchSystem
    Boolean disableDisableHotDeployment
    Boolean disableDisableAutoDeployment
    Int maxMaxLocalJobs
    Boolean manualManualMemArgs
    Boolean runRunCwlInternalJobsOnWorkers
    String parasolParasolCommand
    String parasolParasolMaxBatches
    String scaleScale
    Boolean noNoLinkImports
    Boolean noNoMoveExports
    String mesosMesosMaster
    String provisionerProvisioner
    String nodeNodeTypes
    String nodeNodeOptions
    Int minMinNodes
    Int maxMaxNodes
    String targetTargetTime
    String betaBetaInertia
    String scaleScaleInterval
    String preemptPreemptAbleCompensation
    String nodeNodeStorage
    Boolean metricsMetrics
    Int maxMaxCores
    Int maxMaxMemory
    Int maxMaxDisk
    String retryRetryCount
    Boolean enableEnableUnlimitedPreemptAbleRetries
    Int maxMaxJobDuration
    String rescueRescueJobsFrequency
    Boolean disableDisableCaching
    Boolean disableDisableChaining
    Boolean disableDisableJobStoreChecksumVerification
    Int maxMaxLogFileSize
    Boolean writeWriteLogs
    Boolean writeWriteLogsGzip
    Boolean writeWriteLogsFromAllJobs
    Boolean realRealTimeLogging
    String sseSseKey
    String setenvSetenv
    String serviceServicePollingInterval
    Boolean forceForceDockerAppliance
    Boolean debugDebugWorker
    Boolean disableDisableWorkerOutputCapture
    String badBadWorker
    String badBadWorkerFailInterval
    String provenanceProvenance
    Boolean enableEnableUserProvenance
    Boolean disableDisableUserProvenance
    Boolean enableEnableHostProvenance
    Boolean disableDisableHostProvenance
    String orOrCid
    String fullFullName
    String? jobJobStore
  }
  command <<<
    toil-cwl-runner \
      ~{jobJobStore} \
      ~{if defined(tmpdirTmpdirPrefix) then ("--tmpdir-prefix " +  '"' + tmpdirTmpdirPrefix + '"') else ""} \
      ~{if defined(tmpTmpOutdirPrefix) then ("--tmp-outdir-prefix " +  '"' + tmpTmpOutdirPrefix + '"') else ""} \
      ~{true="--force-docker-pull" false="" forceForceDockerPull} \
      ~{true="--no-match-user" false="" noNoMatchUser} \
      ~{true="--no-read-only" false="" noNoReadOnly} \
      ~{true="--strict-memory-limit" false="" strictStrictMemoryLimit} \
      ~{true="--relax-path-checks" false="" relaxRelaxPathChecks} \
      ~{if defined(defaultDefaultContainer) then ("--default-container " +  '"' + defaultDefaultContainer + '"') else ""} \
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
      ~{true="--noStdOutErr" false="" noNoStdoutErr} \
      ~{true="--stats" false="" statsStats} \
      ~{if defined(cleanClean) then ("--clean " +  '"' + cleanClean + '"') else ""} \
      ~{if defined(cleanCleanWorkdir) then ("--cleanWorkDir " +  '"' + cleanCleanWorkdir + '"') else ""} \
      ~{true="--clusterStats" false="" clusterClusterStats} \
      ~{true="--restart" false="" restartRestart} \
      ~{if defined(batchBatchSystem) then ("--batchSystem " +  '"' + batchBatchSystem + '"') else ""} \
      ~{true="--disableHotDeployment" false="" disableDisableHotDeployment} \
      ~{true="--disableAutoDeployment" false="" disableDisableAutoDeployment} \
      ~{if defined(maxMaxLocalJobs) then ("--maxLocalJobs " +  '"' + maxMaxLocalJobs + '"') else ""} \
      ~{true="--manualMemArgs" false="" manualManualMemArgs} \
      ~{true="--runCwlInternalJobsOnWorkers" false="" runRunCwlInternalJobsOnWorkers} \
      ~{if defined(parasolParasolCommand) then ("--parasolCommand " +  '"' + parasolParasolCommand + '"') else ""} \
      ~{if defined(parasolParasolMaxBatches) then ("--parasolMaxBatches " +  '"' + parasolParasolMaxBatches + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{true="--noLinkImports" false="" noNoLinkImports} \
      ~{true="--noMoveExports" false="" noNoMoveExports} \
      ~{if defined(mesosMesosMaster) then ("--mesosMaster " +  '"' + mesosMesosMaster + '"') else ""} \
      ~{if defined(provisionerProvisioner) then ("--provisioner " +  '"' + provisionerProvisioner + '"') else ""} \
      ~{if defined(nodeNodeTypes) then ("--nodeTypes " +  '"' + nodeNodeTypes + '"') else ""} \
      ~{if defined(nodeNodeOptions) then ("--nodeOptions " +  '"' + nodeNodeOptions + '"') else ""} \
      ~{if defined(minMinNodes) then ("--minNodes " +  '"' + minMinNodes + '"') else ""} \
      ~{if defined(maxMaxNodes) then ("--maxNodes " +  '"' + maxMaxNodes + '"') else ""} \
      ~{if defined(targetTargetTime) then ("--targetTime " +  '"' + targetTargetTime + '"') else ""} \
      ~{if defined(betaBetaInertia) then ("--betaInertia " +  '"' + betaBetaInertia + '"') else ""} \
      ~{if defined(scaleScaleInterval) then ("--scaleInterval " +  '"' + scaleScaleInterval + '"') else ""} \
      ~{if defined(preemptPreemptAbleCompensation) then ("--preemptableCompensation " +  '"' + preemptPreemptAbleCompensation + '"') else ""} \
      ~{if defined(nodeNodeStorage) then ("--nodeStorage " +  '"' + nodeNodeStorage + '"') else ""} \
      ~{true="--metrics" false="" metricsMetrics} \
      ~{if defined(maxMaxCores) then ("--maxCores " +  '"' + maxMaxCores + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--maxMemory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{if defined(maxMaxDisk) then ("--maxDisk " +  '"' + maxMaxDisk + '"') else ""} \
      ~{if defined(retryRetryCount) then ("--retryCount " +  '"' + retryRetryCount + '"') else ""} \
      ~{true="--enableUnlimitedPreemptableRetries" false="" enableEnableUnlimitedPreemptAbleRetries} \
      ~{if defined(maxMaxJobDuration) then ("--maxJobDuration " +  '"' + maxMaxJobDuration + '"') else ""} \
      ~{if defined(rescueRescueJobsFrequency) then ("--rescueJobsFrequency " +  '"' + rescueRescueJobsFrequency + '"') else ""} \
      ~{true="--disableCaching" false="" disableDisableCaching} \
      ~{true="--disableChaining" false="" disableDisableChaining} \
      ~{true="--disableJobStoreChecksumVerification" false="" disableDisableJobStoreChecksumVerification} \
      ~{if defined(maxMaxLogFileSize) then ("--maxLogFileSize " +  '"' + maxMaxLogFileSize + '"') else ""} \
      ~{true="--writeLogs" false="" writeWriteLogs} \
      ~{true="--writeLogsGzip" false="" writeWriteLogsGzip} \
      ~{true="--writeLogsFromAllJobs" false="" writeWriteLogsFromAllJobs} \
      ~{true="--realTimeLogging" false="" realRealTimeLogging} \
      ~{if defined(sseSseKey) then ("--sseKey " +  '"' + sseSseKey + '"') else ""} \
      ~{if defined(setenvSetenv) then ("--setEnv " +  '"' + setenvSetenv + '"') else ""} \
      ~{if defined(serviceServicePollingInterval) then ("--servicePollingInterval " +  '"' + serviceServicePollingInterval + '"') else ""} \
      ~{true="--forceDockerAppliance" false="" forceForceDockerAppliance} \
      ~{true="--debugWorker" false="" debugDebugWorker} \
      ~{true="--disableWorkerOutputCapture" false="" disableDisableWorkerOutputCapture} \
      ~{if defined(badBadWorker) then ("--badWorker " +  '"' + badBadWorker + '"') else ""} \
      ~{if defined(badBadWorkerFailInterval) then ("--badWorkerFailInterval " +  '"' + badBadWorkerFailInterval + '"') else ""} \
      ~{if defined(provenanceProvenance) then ("--provenance " +  '"' + provenanceProvenance + '"') else ""} \
      ~{true="--enable-user-provenance" false="" enableEnableUserProvenance} \
      ~{true="--disable-user-provenance" false="" disableDisableUserProvenance} \
      ~{true="--enable-host-provenance" false="" enableEnableHostProvenance} \
      ~{true="--disable-host-provenance" false="" disableDisableHostProvenance} \
      ~{if defined(orOrCid) then ("--orcid " +  '"' + orOrCid + '"') else ""} \
      ~{if defined(fullFullName) then ("--full-name " +  '"' + fullFullName + '"') else ""}
  >>>
}