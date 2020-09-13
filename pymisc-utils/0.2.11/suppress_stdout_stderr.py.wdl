version 1.0

task SuppressStdoutStderrpy {
  command <<<
    suppress_stdout_stderr_py
  >>>
  output {
    File out_stdout = stdout()
  }
}