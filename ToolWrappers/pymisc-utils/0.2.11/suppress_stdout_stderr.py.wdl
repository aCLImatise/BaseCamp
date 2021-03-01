version 1.0

task SuppressStdoutStderrpy {
  command <<<
    suppress_stdout_stderr_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}