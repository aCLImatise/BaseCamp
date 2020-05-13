version 1.0

task Targqc {
  input {
    String downDownSamplePairsNum
    String downDownSampleFraction
    String threadsThreads
    Boolean reuseReuse
    String schedulerScheduler
    String queueQueue
    String resourcesResources
    Boolean reReAnnotate
  }
  command <<<
    targqc \
      ~{if defined(downDownSamplePairsNum) then ("--downsample-pairs-num " +  '"' + downDownSamplePairsNum + '"') else ""} \
      ~{if defined(downDownSampleFraction) then ("--downsample-fraction " +  '"' + downDownSampleFraction + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--reuse" false="" reuseReuse} \
      ~{if defined(schedulerScheduler) then ("--scheduler " +  '"' + schedulerScheduler + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(resourcesResources) then ("--resources " +  '"' + resourcesResources + '"') else ""} \
      ~{true="--reannotate" false="" reReAnnotate}
  >>>
}