version 1.0

task ICountSegment {
  input {
    Boolean? report_progress
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
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
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    report_progress: "Switch to show progress (default: False)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    annotation: "Path to input GTF file"
    segmentation: "Path to output GTF file"
    fai: "Path to input genome_file (.fai or similar)"
  }
  output {
    File out_stdout = stdout()
  }
}