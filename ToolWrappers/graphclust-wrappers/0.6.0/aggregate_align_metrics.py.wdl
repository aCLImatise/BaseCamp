version 1.0

task AggregateAlignMetricspy {
  input {
    Int? min_seq_num
    Boolean? exclude_spurious_structs
    String? spurious_sci
    String? rna_z_prob_threshold
    String? rs_cape_bp_threshold
    String? clusters_tsv_pattern
    String? filtered_tsv_out
    String? bed_out
    Boolean? all_columns
    Boolean? exclude_paralog_clusters
  }
  command <<<
    aggregate_align_metrics_py \
      ~{if defined(min_seq_num) then ("--min-seq-num " +  '"' + min_seq_num + '"') else ""} \
      ~{if (exclude_spurious_structs) then "--exclude-spurious-structs" else ""} \
      ~{if defined(spurious_sci) then ("--spurious-SCI " +  '"' + spurious_sci + '"') else ""} \
      ~{if defined(rna_z_prob_threshold) then ("--RNAz-prob-threshold " +  '"' + rna_z_prob_threshold + '"') else ""} \
      ~{if defined(rs_cape_bp_threshold) then ("--rscape-bp-threshold " +  '"' + rs_cape_bp_threshold + '"') else ""} \
      ~{if defined(clusters_tsv_pattern) then ("--clusters-tsv-pattern " +  '"' + clusters_tsv_pattern + '"') else ""} \
      ~{if defined(filtered_tsv_out) then ("--filtered-tsv-out " +  '"' + filtered_tsv_out + '"') else ""} \
      ~{if defined(bed_out) then ("--bed-out " +  '"' + bed_out + '"') else ""} \
      ~{if (all_columns) then "--all-columns" else ""} \
      ~{if (exclude_paralog_clusters) then "--exclude-paralog-clusters" else ""}
  >>>
  parameter_meta {
    min_seq_num: ""
    exclude_spurious_structs: ""
    spurious_sci: ""
    rna_z_prob_threshold: ""
    rs_cape_bp_threshold: ""
    clusters_tsv_pattern: ""
    filtered_tsv_out: ""
    bed_out: ""
    all_columns: ""
    exclude_paralog_clusters: ""
  }
  output {
    File out_stdout = stdout()
  }
}