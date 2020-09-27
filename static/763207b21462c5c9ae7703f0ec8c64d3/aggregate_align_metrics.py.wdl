version 1.0

task AggregateAlignMetricspy {
  input {
    Int? min_seq_num
    Boolean? exclude_spurious_structs
  }
  command <<<
    aggregate_align_metrics_py \
      ~{if defined(min_seq_num) then ("--min-seq-num " +  '"' + min_seq_num + '"') else ""} \
      ~{if (exclude_spurious_structs) then "--exclude-spurious-structs" else ""}
  >>>
  parameter_meta {
    min_seq_num: "[--clusters-tsv-pattern CLUSTERS_TSV_PATTERN]\\n[--filtered-tsv-out FILTERED_TSV_OUT]\\n[--bed-out BED_OUT] [--all-columns]\\n[--exclude-paralog-clusters]"
    exclude_spurious_structs: ""
  }
  output {
    File out_stdout = stdout()
  }
}