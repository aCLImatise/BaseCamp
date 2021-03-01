version 1.0

task Histogrampy {
  input {
    Boolean? agg
    Boolean? agg_key_value
    Int? min
    Int? max
    Int? buckets
    String? custom_buckets
    Boolean? no_mvs_d
    String? bucket_format
    Boolean? percentage
    String cat
    String data
  }
  command <<<
    histogram_py \
      ~{cat} \
      ~{data} \
      ~{if (agg) then "--agg" else ""} \
      ~{if (agg_key_value) then "--agg-key-value" else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(buckets) then ("--buckets " +  '"' + buckets + '"') else ""} \
      ~{if defined(custom_buckets) then ("--custom-buckets " +  '"' + custom_buckets + '"') else ""} \
      ~{if (no_mvs_d) then "--no-mvsd" else ""} \
      ~{if defined(bucket_format) then ("--bucket-format " +  '"' + bucket_format + '"') else ""} \
      ~{if (percentage) then "--percentage" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    agg: "Two column input format, space seperated with\\nvalue<space>key"
    agg_key_value: "Two column input format, space seperated with\\nkey<space>value"
    min: "minimum value for graph"
    max: "maximum value for graph"
    buckets: "Number of buckets to use for the histogram"
    custom_buckets: "Comma seperated list of bucket edges for the histogram"
    no_mvs_d: "Disable the calculation of Mean, Variance and SD\\n(improves performance)"
    bucket_format: "format for bucket numbers"
    percentage: "List percentage for each bar"
    cat: ""
    data: ""
  }
  output {
    File out_stdout = stdout()
  }
}