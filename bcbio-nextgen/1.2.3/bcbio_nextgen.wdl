version 1.0

task BcbioNextgen.py {
  input {
    String numNumCores
    String parallelParallelType
    String schedulerScheduler
    Boolean localLocalController
    String queueQueue
    String resourcesResources
    String timeoutTimeout
    String retriesRetries
    String tagTag
    String workflowWorkflow
    String workdirWorkdir
    Boolean forceForceSingle
    String separatorsSeparators
    String? globalGlobalConfig
    String? fcFcDir
    String? runRunConfig
  }
  command <<<
    bcbio_nextgen.py \
      ~{globalGlobalConfig} \
      ~{if defined(numNumCores) then ("--numcores " +  '"' + numNumCores + '"') else ""} \
      ~{if defined(parallelParallelType) then ("--paralleltype " +  '"' + parallelParallelType + '"') else ""} \
      ~{if defined(schedulerScheduler) then ("--scheduler " +  '"' + schedulerScheduler + '"') else ""} \
      ~{true="--local_controller" false="" localLocalController} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(resourcesResources) then ("--resources " +  '"' + resourcesResources + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(workflowWorkflow) then ("--workflow " +  '"' + workflowWorkflow + '"') else ""} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{true="--force-single" false="" forceForceSingle} \
      ~{if defined(separatorsSeparators) then ("--separators " +  '"' + separatorsSeparators + '"') else ""} \
      ~{fcFcDir} \
      ~{runRunConfig}
  >>>
}