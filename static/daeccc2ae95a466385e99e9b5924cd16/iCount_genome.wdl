version 1.0

task ICountGenome {
  input {
    Boolean? release
    Boolean? out_dir
    Boolean? genome
    Boolean? chromosomes
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
  }
  command <<<
    iCount genome \
      ~{if (release) then "--release" else ""} \
      ~{if (out_dir) then "--out_dir" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (chromosomes) then "--chromosomes" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    release: "Release number. Only ENSEMBL releases 59-88 are available (default: 88)"
    out_dir: "Download to this directory (if not given, current working directory) (default: None)"
    genome: "Genome filename (must have .gz file extension). If not given,\\nspecies.release.fa.gz is used. If genome is provided as absolute path,\\nvalue of out_dir parameter is ignored and file is saved to given\\nabsolute path (default: None)"
    chromosomes: "[ ...]\\nIf given, do not download the whole genome, but listed\\nchromosomes only. Chromosomes can be given as strings or integers (default: None)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
  }
  output {
    File out_stdout = stdout()
  }
}