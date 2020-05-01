version 1.0

task QuorumErrorCorrectReads {
  input {
    String threadThread
    String minMinCount
    String skipSkip
    String goodGood
    String anchorAnchorCount
    String windowWindow
    String errorError
    String outputOutput
    File contaminantContaminant
    Boolean trimTrimContaminant
    Int homoHomoTrim
    Boolean gzipGzip
    Boolean noNoMmap
    String aAPrioriErrorRate
    String poissonPoissonThreshold
    String cutCutOff
    String qualQualCutOffValue
    String qualQualCutOffChar
    Boolean noNoDiscard
    Boolean verboseVerbose
  }
  command <<<
    quorum_error_correct_reads \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(minMinCount) then ("--min-count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(goodGood) then ("--good " +  '"' + goodGood + '"') else ""} \
      ~{if defined(anchorAnchorCount) then ("--anchor-count " +  '"' + anchorAnchorCount + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(errorError) then ("--error " +  '"' + errorError + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(contaminantContaminant) then ("--contaminant " +  '"' + contaminantContaminant + '"') else ""} \
      ~{true="--trim-contaminant" false="" trimTrimContaminant} \
      ~{if defined(homoHomoTrim) then ("--homo-trim " +  '"' + homoHomoTrim + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--no-mmap" false="" noNoMmap} \
      ~{if defined(aAPrioriErrorRate) then ("--apriori-error-rate " +  '"' + aAPrioriErrorRate + '"') else ""} \
      ~{if defined(poissonPoissonThreshold) then ("--poisson-threshold " +  '"' + poissonPoissonThreshold + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(qualQualCutOffValue) then ("--qual-cutoff-value " +  '"' + qualQualCutOffValue + '"') else ""} \
      ~{if defined(qualQualCutOffChar) then ("--qual-cutoff-char " +  '"' + qualQualCutOffChar + '"') else ""} \
      ~{true="--no-discard" false="" noNoDiscard} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}