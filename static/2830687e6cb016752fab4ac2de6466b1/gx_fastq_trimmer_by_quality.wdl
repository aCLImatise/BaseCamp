version 1.0

task GxFastqTrimmerByQuality {
  input {
    String formatFormat
    String windowWindowSize
    String windowWindowStep
    String trimTrimEnds
    String aggregationAggregationAction
    String excludeExcludeCount
    String scoreScoreComparison
    String qualityQualityScore
    Boolean keepKeepZeroLength
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    gx-fastq-trimmer-by-quality \
      ~{inputInputFile} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(windowWindowStep) then ("--window_step " +  '"' + windowWindowStep + '"') else ""} \
      ~{if defined(trimTrimEnds) then ("--trim_ends " +  '"' + trimTrimEnds + '"') else ""} \
      ~{if defined(aggregationAggregationAction) then ("--aggregation_action " +  '"' + aggregationAggregationAction + '"') else ""} \
      ~{if defined(excludeExcludeCount) then ("--exclude_count " +  '"' + excludeExcludeCount + '"') else ""} \
      ~{if defined(scoreScoreComparison) then ("--score_comparison " +  '"' + scoreScoreComparison + '"') else ""} \
      ~{if defined(qualityQualityScore) then ("--quality_score " +  '"' + qualityQualityScore + '"') else ""} \
      ~{true="--keep_zero_length" false="" keepKeepZeroLength} \
      ~{outputOutputFile}
  >>>
}