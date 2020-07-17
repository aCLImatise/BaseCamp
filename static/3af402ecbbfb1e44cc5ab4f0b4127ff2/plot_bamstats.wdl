version 1.0

task PlotBamstats {
  input {
    Boolean? keep_files
    Boolean? log_y
    Boolean? merge
    File? prefix
    File? ref_stats
    File? do_ref_stats
    File? targets
    File file_do_tba_mdot_bc
  }
  command <<<
    plot-bamstats \
      ~{file_do_tba_mdot_bc} \
      ~{true="--keep-files" false="" keep_files} \
      ~{true="--log-y" false="" log_y} \
      ~{true="--merge" false="" merge} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(ref_stats) then ("--ref-stats " +  '"' + ref_stats + '"') else ""} \
      ~{if defined(do_ref_stats) then ("--do-ref-stats " +  '"' + do_ref_stats + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""}
  >>>
  parameter_meta {
    keep_files: "Do not remove temporary files."
    log_y: "Set the Y axis scale of the Insert Size plot to log 10."
    merge: "Merge multiple bamstats files and output to STDOUT."
    prefix: "The output files prefix, add a slash to create new directory."
    ref_stats: "Optional reference stats file with expected GC content (created with -s)."
    do_ref_stats: "Calculate reference sequence GC for later use with -r"
    targets: "Restrict -s to the listed regions (tab-delimited chr,from,to. 1-based, inclusive)"
    file_do_tba_mdot_bc: ""
  }
}