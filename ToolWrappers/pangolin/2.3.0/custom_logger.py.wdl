version 1.0

task CustomLoggerpy {
  command <<<
    custom_logger_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.0--py_1"
  }
  output {
    File out_stdout = stdout()
  }
}