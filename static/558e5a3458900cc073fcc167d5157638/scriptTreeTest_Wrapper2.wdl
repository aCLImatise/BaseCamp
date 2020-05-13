version 1.0

task ScriptTreeTestWrapper2.py {
  input {
    Boolean logoffLogoff
    Boolean loginfoLoginfo
    Boolean logLogDebug
    String loglevelLoglevel
    String logLogFile
    Boolean rotatingRotatingLogging
    String jobJobTree
    Boolean statsStats
    String batchBatchSystem
    Int maxMaxThreads
    String parasolParasolCommand
    String defaultDefaultMemory
    String defaultDefaultCpu
    Int maxMaxCpus
    Int maxMaxMemory
    String retryRetryCount
    Int maxMaxJobDuration
    String rescueRescueJobsFrequency
    String bigBigBatchSystem
    String bigBigMemoryThreshold
    String bigBigCpuThreshold
    String bigBigMaxCpus
    String bigBigMaxMemory
    String jobJobTime
    Int maxMaxLogFileSize
    String commandCommand
  }
  command <<<
    scriptTreeTest_Wrapper2.py \
      ~{true="--logOff" false="" logoffLogoff} \
      ~{true="--logInfo" false="" loginfoLoginfo} \
      ~{true="--logDebug" false="" logLogDebug} \
      ~{if defined(loglevelLoglevel) then ("--logLevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logFile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotatingRotatingLogging} \
      ~{if defined(jobJobTree) then ("--jobTree " +  '"' + jobJobTree + '"') else ""} \
      ~{true="--stats" false="" statsStats} \
      ~{if defined(batchBatchSystem) then ("--batchSystem " +  '"' + batchBatchSystem + '"') else ""} \
      ~{if defined(maxMaxThreads) then ("--maxThreads " +  '"' + maxMaxThreads + '"') else ""} \
      ~{if defined(parasolParasolCommand) then ("--parasolCommand " +  '"' + parasolParasolCommand + '"') else ""} \
      ~{if defined(defaultDefaultMemory) then ("--defaultMemory " +  '"' + defaultDefaultMemory + '"') else ""} \
      ~{if defined(defaultDefaultCpu) then ("--defaultCpu " +  '"' + defaultDefaultCpu + '"') else ""} \
      ~{if defined(maxMaxCpus) then ("--maxCpus " +  '"' + maxMaxCpus + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--maxMemory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{if defined(retryRetryCount) then ("--retryCount " +  '"' + retryRetryCount + '"') else ""} \
      ~{if defined(maxMaxJobDuration) then ("--maxJobDuration " +  '"' + maxMaxJobDuration + '"') else ""} \
      ~{if defined(rescueRescueJobsFrequency) then ("--rescueJobsFrequency " +  '"' + rescueRescueJobsFrequency + '"') else ""} \
      ~{if defined(bigBigBatchSystem) then ("--bigBatchSystem " +  '"' + bigBigBatchSystem + '"') else ""} \
      ~{if defined(bigBigMemoryThreshold) then ("--bigMemoryThreshold " +  '"' + bigBigMemoryThreshold + '"') else ""} \
      ~{if defined(bigBigCpuThreshold) then ("--bigCpuThreshold " +  '"' + bigBigCpuThreshold + '"') else ""} \
      ~{if defined(bigBigMaxCpus) then ("--bigMaxCpus " +  '"' + bigBigMaxCpus + '"') else ""} \
      ~{if defined(bigBigMaxMemory) then ("--bigMaxMemory " +  '"' + bigBigMaxMemory + '"') else ""} \
      ~{if defined(jobJobTime) then ("--jobTime " +  '"' + jobJobTime + '"') else ""} \
      ~{if defined(maxMaxLogFileSize) then ("--maxLogFileSize " +  '"' + maxMaxLogFileSize + '"') else ""} \
      ~{if defined(commandCommand) then ("--command " +  '"' + commandCommand + '"') else ""}
  >>>
}