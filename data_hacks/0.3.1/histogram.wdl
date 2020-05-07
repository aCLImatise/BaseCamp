version 1.0

task Histogram.py {
  input {
    Boolean aggAgg
    Boolean aggAggKeyValue
    Int minMin
    Int maxMax
    String bucketsBuckets
    String customCustomBuckets
    Boolean noNoMvsD
    String bucketBucketFormat
    Boolean percentagePercentage
  }
  command <<<
    histogram.py \
      ~{true="--agg" false="" aggAgg} \
      ~{true="--agg-key-value" false="" aggAggKeyValue} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(bucketsBuckets) then ("--buckets " +  '"' + bucketsBuckets + '"') else ""} \
      ~{if defined(customCustomBuckets) then ("--custom-buckets " +  '"' + customCustomBuckets + '"') else ""} \
      ~{true="--no-mvsd" false="" noNoMvsD} \
      ~{if defined(bucketBucketFormat) then ("--bucket-format " +  '"' + bucketBucketFormat + '"') else ""} \
      ~{true="--percentage" false="" percentagePercentage}
  >>>
}