version 1.0

task HulkSmash {
  input {
    String algorithmAlgorithm
    Boolean bannerBannerMatrix
    String metricMetric
    Boolean recursiveRecursive
    String sketchSketchDir
    String kmKmErSize
    String logLog
    String outfileOutfile
    Int processorsProcessors
    Boolean profilingProfiling
    String? flagsFlags
  }
  command <<<
    hulk smash \
      ~{flagsFlags} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{true="--bannerMatrix" false="" bannerBannerMatrix} \
      ~{if defined(metricMetric) then ("--metric " +  '"' + metricMetric + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(sketchSketchDir) then ("--sketchDir " +  '"' + sketchSketchDir + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmerSize " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--profiling" false="" profilingProfiling}
  >>>
}