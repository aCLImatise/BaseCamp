version 1.0

task CustomLoggerpy {
  command <<<
    custom_logger_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}