version 1.0

task HpSummaryStats {
  input {
    String? dir_list
    String? ph_list
    Boolean? amplicons
    Directory? outdir
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    hp_summary_stats \
      ~{if defined(dir_list) then ("--dir_list " +  '"' + dir_list + '"') else ""} \
      ~{if defined(ph_list) then ("--ph_list " +  '"' + ph_list + '"') else ""} \
      ~{if (amplicons) then "--amplicons" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    dir_list: "List of directories which include the required files,\\none on each line"
    ph_list: "List of directories which include haplotype summary\\nfiles, one on each line"
    amplicons: "Amplicons used in assembly (default: False)"
    outdir: "Output directory"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Name for log file (output)"
    debug: "Print commands but do not run (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}