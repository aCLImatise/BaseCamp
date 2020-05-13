version 1.0

task Fastp {
  input {
    Boolean unpairedUnpaired1
    Boolean unpairedUnpaired2
    Boolean failedFailedOut
    Boolean mergeMerge
    Boolean mergedMergedOut
    Boolean includeIncludeUnMerged
    Boolean stdinStdin
    Boolean stdoutStdout
    Boolean interleavedInterleavedIn
    Boolean readsReadsToProcess
    Boolean dontDontOverwrite
    Boolean fixFixMgiId
    Boolean verboseVerbose
    Boolean disableDisableAdapterTrimming
    Boolean adapterAdapterSequence
    Boolean adapterAdapterSequenceR2
    Boolean adapterAdapterFastA
    Boolean detectDetectAdapterForPe
    Boolean trimTrimFront1
    Boolean trimTrimTail1
    Boolean maxMaxLen1
    Boolean trimTrimFront2
    Boolean trimTrimTail2
    Boolean maxMaxLen2
    Boolean trimTrimPolyG
    Boolean polyPolyGMinLen
    Boolean disableDisableTrimPolyG
    Boolean trimTrimPolyX
    Boolean polyPolyXMinLen
    Boolean cutCutFrontWindowSize
    Boolean cutCutFrontMeanQuality
    Boolean cutCutTailWindowSize
    Boolean cutCutTailMeanQuality
    Boolean cutCutRightWindowSize
    Boolean cutCutRightMeanQuality
    Boolean disableDisableQualityFiltering
    Boolean qualifiedQualifiedQualityPhred
    Boolean unqualifiedUnqualifiedPercentLimit
    Boolean nNBaseLimit
    Boolean averageAverageQual
    Boolean disableDisableLengthFiltering
    Boolean lengthLengthRequired
    Boolean lengthLengthLimit
    Boolean lowLowComplexityFilter
    Boolean complexityComplexityThreshold
    Boolean filterFilterByIndex1
    Boolean filterFilterByIndex2
    Boolean filterFilterByIndexThreshold
    Boolean correctionCorrection
    Boolean overlapOverlapLenRequire
    Boolean overlapOverlapDiffLimit
    Boolean overlapOverlapDiffPercentLimit
    Boolean umiUmi
    Boolean umiUmiLoc
    Boolean umiUmiLen
    Boolean umiUmiPrefix
    Boolean umiUmiSkip
    Boolean overrepresentationOverrepresentationAnalysis
    Boolean overrepresentationOverrepresentationSampling
    Boolean jsonJson
    Boolean reportReportTitle
    Boolean threadThread
    Boolean splitSplit
    Boolean splitSplitByLines
    Boolean splitSplitPrefixDigits
    Boolean cutCutByQuality5
    Boolean cutCutByQuality3
    Boolean cutCutByQualityAggressive
    Boolean discardDiscardUnMerged
  }
  command <<<
    fastp \
      ~{true="--unpaired1" false="" unpairedUnpaired1} \
      ~{true="--unpaired2" false="" unpairedUnpaired2} \
      ~{true="--failed_out" false="" failedFailedOut} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--merged_out" false="" mergedMergedOut} \
      ~{true="--include_unmerged" false="" includeIncludeUnMerged} \
      ~{true="--stdin" false="" stdinStdin} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--interleaved_in" false="" interleavedInterleavedIn} \
      ~{true="--reads_to_process" false="" readsReadsToProcess} \
      ~{true="--dont_overwrite" false="" dontDontOverwrite} \
      ~{true="--fix_mgi_id" false="" fixFixMgiId} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--disable_adapter_trimming" false="" disableDisableAdapterTrimming} \
      ~{true="--adapter_sequence" false="" adapterAdapterSequence} \
      ~{true="--adapter_sequence_r2" false="" adapterAdapterSequenceR2} \
      ~{true="--adapter_fasta" false="" adapterAdapterFastA} \
      ~{true="--detect_adapter_for_pe" false="" detectDetectAdapterForPe} \
      ~{true="--trim_front1" false="" trimTrimFront1} \
      ~{true="--trim_tail1" false="" trimTrimTail1} \
      ~{true="--max_len1" false="" maxMaxLen1} \
      ~{true="--trim_front2" false="" trimTrimFront2} \
      ~{true="--trim_tail2" false="" trimTrimTail2} \
      ~{true="--max_len2" false="" maxMaxLen2} \
      ~{true="--trim_poly_g" false="" trimTrimPolyG} \
      ~{true="--poly_g_min_len" false="" polyPolyGMinLen} \
      ~{true="--disable_trim_poly_g" false="" disableDisableTrimPolyG} \
      ~{true="--trim_poly_x" false="" trimTrimPolyX} \
      ~{true="--poly_x_min_len" false="" polyPolyXMinLen} \
      ~{true="--cut_front_window_size" false="" cutCutFrontWindowSize} \
      ~{true="--cut_front_mean_quality" false="" cutCutFrontMeanQuality} \
      ~{true="--cut_tail_window_size" false="" cutCutTailWindowSize} \
      ~{true="--cut_tail_mean_quality" false="" cutCutTailMeanQuality} \
      ~{true="--cut_right_window_size" false="" cutCutRightWindowSize} \
      ~{true="--cut_right_mean_quality" false="" cutCutRightMeanQuality} \
      ~{true="--disable_quality_filtering" false="" disableDisableQualityFiltering} \
      ~{true="--qualified_quality_phred" false="" qualifiedQualifiedQualityPhred} \
      ~{true="--unqualified_percent_limit" false="" unqualifiedUnqualifiedPercentLimit} \
      ~{true="--n_base_limit" false="" nNBaseLimit} \
      ~{true="--average_qual" false="" averageAverageQual} \
      ~{true="--disable_length_filtering" false="" disableDisableLengthFiltering} \
      ~{true="--length_required" false="" lengthLengthRequired} \
      ~{true="--length_limit" false="" lengthLengthLimit} \
      ~{true="--low_complexity_filter" false="" lowLowComplexityFilter} \
      ~{true="--complexity_threshold" false="" complexityComplexityThreshold} \
      ~{true="--filter_by_index1" false="" filterFilterByIndex1} \
      ~{true="--filter_by_index2" false="" filterFilterByIndex2} \
      ~{true="--filter_by_index_threshold" false="" filterFilterByIndexThreshold} \
      ~{true="--correction" false="" correctionCorrection} \
      ~{true="--overlap_len_require" false="" overlapOverlapLenRequire} \
      ~{true="--overlap_diff_limit" false="" overlapOverlapDiffLimit} \
      ~{true="--overlap_diff_percent_limit" false="" overlapOverlapDiffPercentLimit} \
      ~{true="--umi" false="" umiUmi} \
      ~{true="--umi_loc" false="" umiUmiLoc} \
      ~{true="--umi_len" false="" umiUmiLen} \
      ~{true="--umi_prefix" false="" umiUmiPrefix} \
      ~{true="--umi_skip" false="" umiUmiSkip} \
      ~{true="--overrepresentation_analysis" false="" overrepresentationOverrepresentationAnalysis} \
      ~{true="--overrepresentation_sampling" false="" overrepresentationOverrepresentationSampling} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--report_title" false="" reportReportTitle} \
      ~{true="--thread" false="" threadThread} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--split_by_lines" false="" splitSplitByLines} \
      ~{true="--split_prefix_digits" false="" splitSplitPrefixDigits} \
      ~{true="--cut_by_quality5" false="" cutCutByQuality5} \
      ~{true="--cut_by_quality3" false="" cutCutByQuality3} \
      ~{true="--cut_by_quality_aggressive" false="" cutCutByQualityAggressive} \
      ~{true="--discard_unmerged" false="" discardDiscardUnMerged}
  >>>
}