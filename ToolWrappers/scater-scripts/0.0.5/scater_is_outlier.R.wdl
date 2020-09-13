version 1.0

task ScaterisoutlierR {
  input {
    File? metric_file
    Int? nm_ads
    String? type
    Int? log
    Int? min_diff
    File? output_file
  }
  command <<<
    scater_is_outlier_R \
      ~{if defined(metric_file) then ("--metric-file " +  '"' + metric_file + '"') else ""} \
      ~{if defined(nm_ads) then ("--nmads " +  '"' + nm_ads + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(min_diff) then ("--min-diff " +  '"' + min_diff + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    metric_file: "Two column table with cell names on the first column and numeric QC metric on the second column."
    nm_ads: "scalar, number of median-absolute-deviations away from median required for a value to be called an outlier."
    type: "character scalar, choice indicate whether outliers should be looked for at both tails (default: \\\"both\\\") or only at the lower end (\\\"lower\\\") or the higher end (\\\"higher\\\")."
    log: "logical, should the values of the metric be transformed to the log10 scale before computing median-absolute-deviation for outlier detection?"
    min_diff: "numeric scalar indicating the minimum difference from the median to consider as an outlier. The outlier threshold is defined from the larger of nmads MADs and min.diff, to avoid calling many outliers when the MAD is very small. If NA, it is ignored."
    output_file: "File name in which to store the output vector of outliers (one value per line)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}