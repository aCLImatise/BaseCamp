version 1.0

task ICountSegment {
  input {
    Boolean? report_progress
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String annotation
    String segmentation
    String fai
  }
  command <<<
    iCount segment \
      ~{annotation} \
      ~{segmentation} \
      ~{fai} \
      ~{if (report_progress) then "--report_progress" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_progress: "Switch to show progress (default: False)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    annotation: "Path to input GTF file"
    segmentation: "Path to output GTF file"
    fai: "Path to input genome_file (.fai or similar)"
  }
  output {
    File out_stdout = stdout()
  }
}