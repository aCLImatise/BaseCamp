version 1.0

task LoggingUtilspy {
  command <<<
    logging_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}