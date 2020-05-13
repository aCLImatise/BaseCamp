version 1.0

task Concoct {
  input {
    String coverageCoverageFile
    String compositionCompositionFile
    String clustersClusters
    String kmKmErLength
    String threadsThreads
    Int lengthLengthThreshold
    String readReadLength
    String totalTotalPercentagePcA
    String basenameBasename
    String seedSeed
    String iterationsIterations
    Boolean noNoCovNormalization
    Boolean noNoTotalCoverage
    Boolean noNoOriginalData
    Boolean convergeConvergeOut
    Boolean debugDebug
  }
  command <<<
    concoct \
      ~{if defined(coverageCoverageFile) then ("--coverage_file " +  '"' + coverageCoverageFile + '"') else ""} \
      ~{if defined(compositionCompositionFile) then ("--composition_file " +  '"' + compositionCompositionFile + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(kmKmErLength) then ("--kmer_length " +  '"' + kmKmErLength + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(lengthLengthThreshold) then ("--length_threshold " +  '"' + lengthLengthThreshold + '"') else ""} \
      ~{if defined(readReadLength) then ("--read_length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(totalTotalPercentagePcA) then ("--total_percentage_pca " +  '"' + totalTotalPercentagePcA + '"') else ""} \
      ~{if defined(basenameBasename) then ("--basename " +  '"' + basenameBasename + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{true="--no_cov_normalization" false="" noNoCovNormalization} \
      ~{true="--no_total_coverage" false="" noNoTotalCoverage} \
      ~{true="--no_original_data" false="" noNoOriginalData} \
      ~{true="--converge_out" false="" convergeConvergeOut} \
      ~{true="--debug" false="" debugDebug}
  >>>
}