version 1.0

task ICountExamples {
  input {
    Boolean? out_dir
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String i_count_dot_examples_dot_run
  }
  command <<<
    iCount examples \
      ~{i_count_dot_examples_dot_run} \
      ~{if (out_dir) then "--out_dir" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_dir: "Directory to which example scripts should be copied (default: .)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    i_count_dot_examples_dot_run: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}