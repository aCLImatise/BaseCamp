version 1.0

task Snpiphy {
  input {
    String fastFastQDir
    String outputOutputDirectory
    String referenceReference
    String covCovCutOff
    String prefixPrefix
    String threadsThreads
    Boolean parallelParallel
    Boolean singleSingleEnd
    Boolean gammaGammaModel
    String treeTreeBuilder
    Boolean forceForce
    Boolean verboseVerbose
  }
  command <<<
    snpiphy \
      ~{if defined(fastFastQDir) then ("--fastq-dir " +  '"' + fastFastQDir + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(covCovCutOff) then ("--cov-cutoff " +  '"' + covCovCutOff + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{true="--single_end" false="" singleSingleEnd} \
      ~{true="--gamma_model" false="" gammaGammaModel} \
      ~{if defined(treeTreeBuilder) then ("--tree_builder " +  '"' + treeTreeBuilder + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}