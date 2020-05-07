version 1.0

task FcConsensus {
  input {
    String nNCore
    String localLocalMatchCountWindow
    String localLocalMatchCountThreshold
    Int minMinCov
    Int minMinCovAln
    Int minMinLenAln
    Int maxMaxNRead
    Boolean trimTrim
    Boolean outputOutputFull
    Boolean outputOutputMulti
    Boolean outputOutputDFormat
    Boolean outputOutputSimpleFastAHeader
    Int minMinIdt
    String edgeEdgeTolerance
    String trimTrimSize
  }
  command <<<
    fc_consensus \
      ~{if defined(nNCore) then ("--n_core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(localLocalMatchCountWindow) then ("--local_match_count_window " +  '"' + localLocalMatchCountWindow + '"') else ""} \
      ~{if defined(localLocalMatchCountThreshold) then ("--local_match_count_threshold " +  '"' + localLocalMatchCountThreshold + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinCovAln) then ("--min_cov_aln " +  '"' + minMinCovAln + '"') else ""} \
      ~{if defined(minMinLenAln) then ("--min_len_aln " +  '"' + minMinLenAln + '"') else ""} \
      ~{if defined(maxMaxNRead) then ("--max_n_read " +  '"' + maxMaxNRead + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--output_full" false="" outputOutputFull} \
      ~{true="--output_multi" false="" outputOutputMulti} \
      ~{true="--output_dformat" false="" outputOutputDFormat} \
      ~{true="--output_simple_fasta_header" false="" outputOutputSimpleFastAHeader} \
      ~{if defined(minMinIdt) then ("--min_idt " +  '"' + minMinIdt + '"') else ""} \
      ~{if defined(edgeEdgeTolerance) then ("--edge_tolerance " +  '"' + edgeEdgeTolerance + '"') else ""} \
      ~{if defined(trimTrimSize) then ("--trim_size " +  '"' + trimTrimSize + '"') else ""}
  >>>
}