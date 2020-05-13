version 1.0

task Panaroo {
  input {
    String threadsThreads
    Boolean quietQuiet
    Array[String]+ inputInput
    String outOutDir
    String cleanCleanMode
    String thresholdThreshold
    String familyFamilyThreshold
    String lenLenDifPercent
    Boolean mergeMergeParalogs
    String searchSearchRadius
    String reReFindPropMatch
    Int minMinTrailingSupport
    String trailingTrailingRecursive
    String edgeEdgeSupportThreshold
    Int lengthLengthOutlierSupportProportion
    String removeRemoveByConsensus
    String highHighVarFlag
    Int minMinEdgeSupportSv
    Boolean allAllSeqInGraph
    Boolean noNoCleanEdges
    String alignmentAlignment
    String alignerAligner
    String coreCoreThreshold
  }
  command <<<
    panaroo \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(cleanCleanMode) then ("--clean-mode " +  '"' + cleanCleanMode + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(familyFamilyThreshold) then ("--family_threshold " +  '"' + familyFamilyThreshold + '"') else ""} \
      ~{if defined(lenLenDifPercent) then ("--len_dif_percent " +  '"' + lenLenDifPercent + '"') else ""} \
      ~{true="--merge_paralogs" false="" mergeMergeParalogs} \
      ~{if defined(searchSearchRadius) then ("--search_radius " +  '"' + searchSearchRadius + '"') else ""} \
      ~{if defined(reReFindPropMatch) then ("--refind_prop_match " +  '"' + reReFindPropMatch + '"') else ""} \
      ~{if defined(minMinTrailingSupport) then ("--min_trailing_support " +  '"' + minMinTrailingSupport + '"') else ""} \
      ~{if defined(trailingTrailingRecursive) then ("--trailing_recursive " +  '"' + trailingTrailingRecursive + '"') else ""} \
      ~{if defined(edgeEdgeSupportThreshold) then ("--edge_support_threshold " +  '"' + edgeEdgeSupportThreshold + '"') else ""} \
      ~{if defined(lengthLengthOutlierSupportProportion) then ("--length_outlier_support_proportion " +  '"' + lengthLengthOutlierSupportProportion + '"') else ""} \
      ~{if defined(removeRemoveByConsensus) then ("--remove_by_consensus " +  '"' + removeRemoveByConsensus + '"') else ""} \
      ~{if defined(highHighVarFlag) then ("--high_var_flag " +  '"' + highHighVarFlag + '"') else ""} \
      ~{if defined(minMinEdgeSupportSv) then ("--min_edge_support_sv " +  '"' + minMinEdgeSupportSv + '"') else ""} \
      ~{true="--all_seq_in_graph" false="" allAllSeqInGraph} \
      ~{true="--no_clean_edges" false="" noNoCleanEdges} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(coreCoreThreshold) then ("--core_threshold " +  '"' + coreCoreThreshold + '"') else ""}
  >>>
}