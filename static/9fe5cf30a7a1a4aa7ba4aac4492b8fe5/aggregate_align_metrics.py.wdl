version 1.0

task AggregateAlignMetricspy {
  input {
    Boolean? exclude_spurious_structs
  }
  command <<<
    aggregate_align_metrics_py \
      ~{if (exclude_spurious_structs) then "--exclude-spurious-structs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    exclude_spurious_structs: ""
  }
  output {
    File out_stdout = stdout()
  }
}