version 1.0

task Abruijn {
  input {
    Boolean debugDebug
    Boolean resumeResume
    String threadsThreads
    String iterationsIterations
    String platformPlatform
    String kmKmErSize
    Int minMinOverlap
    Int minMinCoverage
    Int maxMaxCoverage
  }
  command <<<
    abruijn \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(platformPlatform) then ("--platform " +  '"' + platformPlatform + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(maxMaxCoverage) then ("--max-coverage " +  '"' + maxMaxCoverage + '"') else ""}
  >>>
}