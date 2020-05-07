version 1.0

task MultiSamplePostAnalysis {
  input {
    String nNPermutations
    String seedSeed
    String recRecLust
    Boolean reinitReinit
    Boolean verboseVerbose
    String nNJobs
    String? segSegCopy
    String? clustClustMethod
    String? distanceDistanceMetric
    String? outOutDir
  }
  command <<<
    multi_sample_post_analysis \
      ~{segSegCopy} \
      ~{if defined(nNPermutations) then ("--n_permutations " +  '"' + nNPermutations + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(recRecLust) then ("--reclust " +  '"' + recRecLust + '"') else ""} \
      ~{true="--reinit" false="" reinitReinit} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(nNJobs) then ("--n_jobs " +  '"' + nNJobs + '"') else ""} \
      ~{clustClustMethod} \
      ~{distanceDistanceMetric} \
      ~{outOutDir}
  >>>
}