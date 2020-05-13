version 1.0

task SambambaDepth {
  input {
    String filterFilter
    File outputOutputFile
    String nNThreads
    Int minMinCoverage
    Int maxMaxCoverage
    String minMinBaseQuality
    Boolean combinedCombined
    Boolean annotateAnnotate
    Boolean fixFixMateOverlaps
    String covCovThreshold
    String windowWindowSize
    String overlapOverlap
    String covCovThreshold
  }
  command <<<
    sambamba depth \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(maxMaxCoverage) then ("--max-coverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min-base-quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{true="--combined" false="" combinedCombined} \
      ~{true="--annotate" false="" annotateAnnotate} \
      ~{true="--fix-mate-overlaps" false="" fixFixMateOverlaps} \
      ~{if defined(covCovThreshold) then ("--cov-threshold " +  '"' + covCovThreshold + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(covCovThreshold) then ("--cov-threshold " +  '"' + covCovThreshold + '"') else ""}
  >>>
}