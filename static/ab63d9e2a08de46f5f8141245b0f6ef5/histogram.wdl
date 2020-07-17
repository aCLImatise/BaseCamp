version 1.0

task Histogram.py {
  input {
    Boolean? agg
    Boolean? agg_key_value
    Int? min
    Int? max
    String? buckets
    String? custom_buckets
    Boolean? no_mvs_d
    String? bucket_format
    Boolean? percentage
    String cat
    String data
  }
  command <<<
    histogram.py \
      ~{cat} \
      ~{data} \
      ~{true="--agg" false="" agg} \
      ~{true="--agg-key-value" false="" agg_key_value} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(buckets) then ("--buckets " +  '"' + buckets + '"') else ""} \
      ~{if defined(custom_buckets) then ("--custom-buckets " +  '"' + custom_buckets + '"') else ""} \
      ~{true="--no-mvsd" false="" no_mvs_d} \
      ~{if defined(bucket_format) then ("--bucket-format " +  '"' + bucket_format + '"') else ""} \
      ~{true="--percentage" false="" percentage}
  >>>
  parameter_meta {
    agg: "Two column input format, space seperated with value<space>key"
    agg_key_value: "Two column input format, space seperated with key<space>value"
    min: "minimum value for graph"
    max: "maximum value for graph"
    buckets: "Number of buckets to use for the histogram"
    custom_buckets: "Comma seperated list of bucket edges for the histogram"
    no_mvs_d: "Disable the calculation of Mean, Variance and SD (improves performance)"
    bucket_format: "format for bucket numbers"
    percentage: "List percentage for each bar"
    cat: ""
    data: ""
  }
}