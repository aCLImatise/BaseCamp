version 1.0

task AggregateAlignMetrics.py {
  input {
    Boolean? exclude_spurious_structs
  }
  command <<<
    aggregate_align_metrics.py \
      ~{true="--exclude-spurious-structs" false="" exclude_spurious_structs}
  >>>
  parameter_meta {
    exclude_spurious_structs: ""
  }
}