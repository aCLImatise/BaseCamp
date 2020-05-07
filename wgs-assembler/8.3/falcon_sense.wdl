version 1.0

task FalconSense {
  input {
    String nNCore
    String localLocalMatchCountWindow
    String localLocalMatchCountThreshold
    Int minMinCov
    Int maxMaxNRead
    Boolean trimTrim
    Boolean outputOutputFull
    Boolean outputOutputMulti
    Int minMinIdt
    String edgeEdgeTolerance
    String trimTrimSize
  }
  command <<<
    falcon_sense \
      ~{if defined(nNCore) then ("--n_core " +  '"' + nNCore + '"') else ""} \
      ~{if defined(localLocalMatchCountWindow) then ("--local_match_count_window " +  '"' + localLocalMatchCountWindow + '"') else ""} \
      ~{if defined(localLocalMatchCountThreshold) then ("--local_match_count_threshold " +  '"' + localLocalMatchCountThreshold + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxNRead) then ("--max_n_read " +  '"' + maxMaxNRead + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--output_full" false="" outputOutputFull} \
      ~{true="--output_multi" false="" outputOutputMulti} \
      ~{if defined(minMinIdt) then ("--min_idt " +  '"' + minMinIdt + '"') else ""} \
      ~{if defined(edgeEdgeTolerance) then ("--edge_tolerance " +  '"' + edgeEdgeTolerance + '"') else ""} \
      ~{if defined(trimTrimSize) then ("--trim_size " +  '"' + trimTrimSize + '"') else ""}
  >>>
}