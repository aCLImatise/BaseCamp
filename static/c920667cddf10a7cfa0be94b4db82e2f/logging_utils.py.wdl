version 1.0

task LoggingUtilspy {
  command <<<
    logging_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}