version 1.0

task GxFastqTrimmerByQuality {
  input {
    String? format
    String? window_size
    String? window_step
    String? trim_ends
    String? aggregation_action
    String? exclude_count
    String? score_comparison
    String? quality_score
    Boolean? keep_zero_length
    String input_file
    String output_file
  }
  command <<<
    gx-fastq-trimmer-by-quality \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(window_step) then ("--window_step " +  '"' + window_step + '"') else ""} \
      ~{if defined(trim_ends) then ("--trim_ends " +  '"' + trim_ends + '"') else ""} \
      ~{if defined(aggregation_action) then ("--aggregation_action " +  '"' + aggregation_action + '"') else ""} \
      ~{if defined(exclude_count) then ("--exclude_count " +  '"' + exclude_count + '"') else ""} \
      ~{if defined(score_comparison) then ("--score_comparison " +  '"' + score_comparison + '"') else ""} \
      ~{if defined(quality_score) then ("--quality_score " +  '"' + quality_score + '"') else ""} \
      ~{true="--keep_zero_length" false="" keep_zero_length}
  >>>
  parameter_meta {
    format: "FASTQ variant type"
    window_size: "Window size"
    window_step: "Window step"
    trim_ends: "Ends to Trim"
    aggregation_action: "Aggregate action for window"
    exclude_count: "Maximum number of bases to exclude from the window during aggregation"
    score_comparison: "Keep read when aggregate score is"
    quality_score: "Quality Score"
    keep_zero_length: "Keep reads with zero length"
    input_file: ""
    output_file: ""
  }
}