version 1.0

task BcbioPrepareSamples.py {
  input {
    String csvCsv
    String outOut
    Boolean forceForceSingle
    Boolean separatorsSeparators
    Boolean removeRemoveSource
    String numNumCores
    String coresCoresPerJob
    String memoryMemoryPerJob
    String timeoutTimeout
    String retriesRetries
    String schedulerScheduler
    String resourcesResources
    String queueQueue
    String tagTag
    String parallelParallelType
  }
  command <<<
    bcbio_prepare_samples.py \
      ~{if defined(csvCsv) then ("--csv " +  '"' + csvCsv + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--force-single" false="" forceForceSingle} \
      ~{true="--separators" false="" separatorsSeparators} \
      ~{true="--remove-source" false="" removeRemoveSource} \
      ~{if defined(numNumCores) then ("--numcores " +  '"' + numNumCores + '"') else ""} \
      ~{if defined(coresCoresPerJob) then ("--cores-per-job " +  '"' + coresCoresPerJob + '"') else ""} \
      ~{if defined(memoryMemoryPerJob) then ("--memory-per-job " +  '"' + memoryMemoryPerJob + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""} \
      ~{if defined(schedulerScheduler) then ("--scheduler " +  '"' + schedulerScheduler + '"') else ""} \
      ~{if defined(resourcesResources) then ("--resources " +  '"' + resourcesResources + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(parallelParallelType) then ("--paralleltype " +  '"' + parallelParallelType + '"') else ""}
  >>>
}