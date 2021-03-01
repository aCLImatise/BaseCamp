version 1.0

task ICountClusters {
  input {
    Boolean? dist
    Boolean? slop
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String sites
    String peaks
    String clusters
  }
  command <<<
    iCount clusters \
      ~{sites} \
      ~{peaks} \
      ~{clusters} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (slop) then "--slop" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dist: "Distance between two peaks to merge into same cluster (default: 20)"
    slop: "Distance between site and cluster to assign site to cluster (default: 3)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    sites: "Path to input BED6 file with sites"
    peaks: "Path to input BED6 file with peaks (or clusters)"
    clusters: "Path to output BED6 file with merged peaks (clusters)"
  }
  output {
    File out_stdout = stdout()
  }
}