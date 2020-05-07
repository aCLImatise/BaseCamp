version 1.0

task FilterRefCoverage {
  input {
    String inputInput
    String discardDiscard
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean modifyModify
    Boolean readReadLengths
    Boolean coveredCovered
    Boolean plotPlot
    String lciLciArg
    String statsStatsFile
    Int minMinCov
    Int maxMaxCov
    Int minMinLci
    Int maxMaxLci
    Int minMinGini
    Int maxMaxGini
  }
  command <<<
    filter_ref_coverage \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--modify" false="" modifyModify} \
      ~{true="--read_lengths" false="" readReadLengths} \
      ~{true="--covered" false="" coveredCovered} \
      ~{true="--plot" false="" plotPlot} \
      ~{if defined(lciLciArg) then ("--lci_arg " +  '"' + lciLciArg + '"') else ""} \
      ~{if defined(statsStatsFile) then ("--stats_file " +  '"' + statsStatsFile + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max_cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinLci) then ("--min_lci " +  '"' + minMinLci + '"') else ""} \
      ~{if defined(maxMaxLci) then ("--max_lci " +  '"' + maxMaxLci + '"') else ""} \
      ~{if defined(minMinGini) then ("--min_gini " +  '"' + minMinGini + '"') else ""} \
      ~{if defined(maxMaxGini) then ("--max_gini " +  '"' + maxMaxGini + '"') else ""}
  >>>
}