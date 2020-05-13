version 1.0

task SingleSamplePostAnalysis {
  input {
    String seedSeed
    String recRecLust
    Boolean reinitReinit
    Boolean verboseVerbose
    String? clustClustMethod
    String? distanceDistanceMetric
    String? outdirOutdir
  }
  command <<<
    single_sample_post_analysis \
      ~{clustClustMethod} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(recRecLust) then ("--reclust " +  '"' + recRecLust + '"') else ""} \
      ~{true="--reinit" false="" reinitReinit} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{distanceDistanceMetric} \
      ~{outdirOutdir}
  >>>
}