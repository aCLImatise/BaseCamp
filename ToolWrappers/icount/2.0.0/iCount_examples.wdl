version 1.0

task ICountExamples {
  input {
    Boolean? od
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String i_count_dot_examples_dot_run
  }
  command <<<
    iCount examples \
      ~{i_count_dot_examples_dot_run} \
      ~{if (od) then "-od" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    od: ", --out_dir       Directory to which example scripts should be copied (default: .)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    i_count_dot_examples_dot_run: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}