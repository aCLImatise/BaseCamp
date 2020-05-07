version 1.0

task FcConsensus {
  input {
    String nNCore
    Int minMinCov
    Int minMinCovAln
    Int maxMaxCovAln
    Int minMinLenAln
    Int minMinNRead
    Int maxMaxNRead
    Boolean trimTrim
    Boolean outputOutputFull
    Boolean outputOutputMulti
    Int minMinIdt
    String edgeEdgeTolerance
    String trimTrimSize
    Boolean allowAllowExternalMapping
    String verboseVerboseLevel
  }
  command <<<
    fc_consensus \
      ~{if defined(nNCore) then ("--n-core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinCovAln) then ("--min-cov-aln " +  '"' + minMinCovAln + '"') else ""} \
      ~{if defined(maxMaxCovAln) then ("--max-cov-aln " +  '"' + maxMaxCovAln + '"') else ""} \
      ~{if defined(minMinLenAln) then ("--min-len-aln " +  '"' + minMinLenAln + '"') else ""} \
      ~{if defined(minMinNRead) then ("--min-n-read " +  '"' + minMinNRead + '"') else ""} \
      ~{if defined(maxMaxNRead) then ("--max-n-read " +  '"' + maxMaxNRead + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--output-full" false="" outputOutputFull} \
      ~{true="--output-multi" false="" outputOutputMulti} \
      ~{if defined(minMinIdt) then ("--min-idt " +  '"' + minMinIdt + '"') else ""} \
      ~{if defined(edgeEdgeTolerance) then ("--edge-tolerance " +  '"' + edgeEdgeTolerance + '"') else ""} \
      ~{if defined(trimTrimSize) then ("--trim-size " +  '"' + trimTrimSize + '"') else ""} \
      ~{true="--allow-external-mapping" false="" allowAllowExternalMapping} \
      ~{if defined(verboseVerboseLevel) then ("--verbose-level " +  '"' + verboseVerboseLevel + '"') else ""}
  >>>
}