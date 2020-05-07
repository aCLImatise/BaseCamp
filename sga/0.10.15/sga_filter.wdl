version 1.0

task SgaFilter {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    File outfileOutfile
    String threadsThreads
    String sampleSampleRate
    Boolean noNoDuplicateCheck
    Boolean substringSubstringOnly
    Boolean noNoKmErCheck
    Boolean kmKmErBothStrand
    Boolean homopolymerHomopolymerCheck
    Boolean lowLowComplexityCheck
    String kmKmErSize
    String kmKmErThreshold
  }
  command <<<
    sga filter \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sampleSampleRate) then ("--sample-rate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{true="--no-duplicate-check" false="" noNoDuplicateCheck} \
      ~{true="--substring-only" false="" substringSubstringOnly} \
      ~{true="--no-kmer-check" false="" noNoKmErCheck} \
      ~{true="--kmer-both-strand" false="" kmKmErBothStrand} \
      ~{true="--homopolymer-check" false="" homopolymerHomopolymerCheck} \
      ~{true="--low-complexity-check" false="" lowLowComplexityCheck} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(kmKmErThreshold) then ("--kmer-threshold " +  '"' + kmKmErThreshold + '"') else ""}
  >>>
}