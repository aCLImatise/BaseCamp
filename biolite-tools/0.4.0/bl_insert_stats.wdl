version 1.0

task Blinsertstats {
  input {
    Boolean? specify_sam_file
    File? specify_stats_file
    Boolean? maxinsert_bin_allocated
    String insert_stats
  }
  command <<<
    bl_insert_stats \
      ~{insert_stats} \
      ~{if (specify_sam_file) then "-i" else ""} \
      ~{if (specify_stats_file) then "-o" else ""} \
      ~{if (maxinsert_bin_allocated) then "-m" else ""}
  >>>
  parameter_meta {
    specify_sam_file: "specify the SAM input file"
    specify_stats_file: "specify the STATS output file"
    maxinsert_bin_allocated: "MAX_INSERT bin allocated for the histogram"
    insert_stats: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_stats_file = "${in_specify_stats_file}"
  }
}