version 1.0

task HpSummaryStats {
  input {
    String? dir_list
    String? ph_list
    Boolean? amplicons
    String? outdir
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    hp_summary_stats \
      ~{if defined(dir_list) then ("--dir_list " +  '"' + dir_list + '"') else ""} \
      ~{if defined(ph_list) then ("--ph_list " +  '"' + ph_list + '"') else ""} \
      ~{true="--amplicons" false="" amplicons} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    dir_list: "List of directories which include the required files, one on each line"
    ph_list: "List of directories which include haplotype summary files, one on each line"
    amplicons: "Amplicons used in assembly (default: False)"
    outdir: "Output directory"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Name for log file (output)"
    debug: "Print commands but do not run (default: False)"
  }
}