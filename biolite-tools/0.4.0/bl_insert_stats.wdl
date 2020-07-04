version 1.0

task BlInsertStats {
  input {
    Boolean? specify_sam_file
    Boolean? specify_stats_file
    Boolean? maxinsert_bin_allocated
    String insert_stats
  }
  command <<<
    bl-insert-stats \
      ~{insert_stats} \
      ~{true="-i" false="" specify_sam_file} \
      ~{true="-o" false="" specify_stats_file} \
      ~{true="-m" false="" maxinsert_bin_allocated}
  >>>
  parameter_meta {
    specify_sam_file: "specify the SAM input file"
    specify_stats_file: "specify the STATS output file"
    maxinsert_bin_allocated: "MAX_INSERT bin allocated for the histogram"
    insert_stats: ""
  }
}