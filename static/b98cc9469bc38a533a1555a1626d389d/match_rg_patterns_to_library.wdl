version 1.0

task MatchRgPatternsToLibrary.pl {
  input {
    Float acfAcf
    Float ploidyPloidy
    Boolean verboseVerbose
    Int maxMaxBalancedRgDist
    Int maxMaxFoldbackDistance
    Int minMinSegSizeForCn
    Float minMinCnChange
    Boolean keepKeepSmallDelsAndTds
    Int maxMaxDepth
    String? rearrangementsRearrangementsBedPe
  }
  command <<<
    match_rg_patterns_to_library.pl \
      ~{rearrangementsRearrangementsBedPe} \
      ~{if defined(acfAcf) then ("-acf " +  '"' + acfAcf + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("-ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(maxMaxBalancedRgDist) then ("-max_balanced_rg_dist " +  '"' + maxMaxBalancedRgDist + '"') else ""} \
      ~{if defined(maxMaxFoldbackDistance) then ("-max_foldback_distance " +  '"' + maxMaxFoldbackDistance + '"') else ""} \
      ~{if defined(minMinSegSizeForCn) then ("-min_seg_size_for_cn " +  '"' + minMinSegSizeForCn + '"') else ""} \
      ~{if defined(minMinCnChange) then ("-min_cn_change " +  '"' + minMinCnChange + '"') else ""} \
      ~{true="-keep_small_dels_and_tds" false="" keepKeepSmallDelsAndTds} \
      ~{if defined(maxMaxDepth) then ("-max_depth " +  '"' + maxMaxDepth + '"') else ""}
  >>>
}