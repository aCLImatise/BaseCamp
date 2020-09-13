version 1.0

task ICountClusters {
  input {
    Boolean? dist
    Boolean? slop
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
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
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    dist: "Distance between two peaks to merge into same cluster (default: 20)"
    slop: "Distance between site and cluster to assign site to cluster (default: 3)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    sites: "Path to input BED6 file with sites"
    peaks: "Path to input BED6 file with peaks (or clusters)"
    clusters: "Path to output BED6 file with merged peaks (clusters)"
  }
  output {
    File out_stdout = stdout()
  }
}