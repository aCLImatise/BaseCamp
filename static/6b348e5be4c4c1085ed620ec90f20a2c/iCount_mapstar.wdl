version 1.0

task ICountMapstar {
  input {
    Boolean? annotation
    Boolean? multimax
    Boolean? mismatches
    Boolean? threads
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String reads
    String genome_index
    String out_dir
  }
  command <<<
    iCount mapstar \
      ~{reads} \
      ~{genome_index} \
      ~{out_dir} \
      ~{if (annotation) then "--annotation" else ""} \
      ~{if (multimax) then "--multimax" else ""} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotation: "GTF annotation needed for mapping to splice-junctions (default: )"
    multimax: "Number of allowed multiple hits (default: 10)"
    mismatches: "Number of allowed mismatches (default: 2)"
    threads: "Number of threads that STAR can use for generating index (default: 1)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    reads: "Sequencing reads to map to genome"
    genome_index: "Folder with genome index"
    out_dir: "Output folder, where to store mapping results"
  }
  output {
    File out_stdout = stdout()
  }
}