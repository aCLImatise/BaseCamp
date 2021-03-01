version 1.0

task ICountIndexstar {
  input {
    Boolean? annotation
    Boolean? overhang
    Boolean? overhang_min
    Boolean? threads
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String genome
    String genome_index
  }
  command <<<
    iCount indexstar \
      ~{genome} \
      ~{genome_index} \
      ~{if (annotation) then "--annotation" else ""} \
      ~{if (overhang) then "--overhang" else ""} \
      ~{if (overhang_min) then "--overhang_min" else ""} \
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
    annotation: "Annotation that defines splice junctions (default: )"
    overhang: "Sequence length around annotated junctions to be used by STAR when\\nconstructing splice junction database (default: 100)"
    overhang_min: "TODO (default: 8)"
    threads: "Number of threads that STAR can use for generating index (default: 1)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    genome: "Genome sequence to index"
    genome_index: "Output folder, where to store genome index"
  }
  output {
    File out_stdout = stdout()
  }
}