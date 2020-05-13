version 1.0

task PanarooMerge {
  input {
    Int minMinEdgeSupportSv
    String threadsThreads
    Boolean verboseVerbose
    Array[String]+ directoriesDirectories
    String outOutDir
    String thresholdThreshold
    String familyFamilyThreshold
    String lenLenDifPercent
    Boolean mergeMergeParalogs
    Int lengthLengthOutlierSupportProportion
    String alignmentAlignment
    String alignerAligner
    String coreCoreThreshold
  }
  command <<<
    panaroo-merge \
      ~{if defined(minMinEdgeSupportSv) then ("--min_edge_support_sv " +  '"' + minMinEdgeSupportSv + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(directoriesDirectories) then ("--directories " +  '"' + directoriesDirectories + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(familyFamilyThreshold) then ("--family_threshold " +  '"' + familyFamilyThreshold + '"') else ""} \
      ~{if defined(lenLenDifPercent) then ("--len_dif_percent " +  '"' + lenLenDifPercent + '"') else ""} \
      ~{true="--merge_paralogs" false="" mergeMergeParalogs} \
      ~{if defined(lengthLengthOutlierSupportProportion) then ("--length_outlier_support_proportion " +  '"' + lengthLengthOutlierSupportProportion + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(coreCoreThreshold) then ("--core_threshold " +  '"' + coreCoreThreshold + '"') else ""}
  >>>
}