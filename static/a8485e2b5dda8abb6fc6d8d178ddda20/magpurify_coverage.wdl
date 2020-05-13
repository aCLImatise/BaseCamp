version 1.0

task MagpurifyCoverage {
  input {
    Int maxMaxDeviation
    Boolean weightedWeightedMean
    String threadsThreads
    String? fnaFna
    String? outOut
    String? bamsBams
  }
  command <<<
    magpurify coverage \
      ~{fnaFna} \
      ~{if defined(maxMaxDeviation) then ("--max-deviation " +  '"' + maxMaxDeviation + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{outOut} \
      ~{bamsBams}
  >>>
}