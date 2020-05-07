version 1.0

task SgaStats {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    String threadsThreads
    String sampleSampleRate
    String kmKmErSize
    String numNumReads
    String branchBranchCutOff
    Boolean runRunLengths
    Boolean kmKmErDistribution
    Boolean noNoOverlap
  }
  command <<<
    sga stats \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(branchBranchCutOff) then ("--branch-cutoff " +  '"' + branchBranchCutOff + '"') else ""} \
      ~{true="--run-lengths" false="" runRunLengths} \
      ~{true="--kmer-distribution" false="" kmKmErDistribution} \
      ~{true="--no-overlap" false="" noNoOverlap}
  >>>
}