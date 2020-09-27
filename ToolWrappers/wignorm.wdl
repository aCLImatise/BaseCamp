version 1.0

task Wignorm {
  command <<<
    wignorm
  >>>
  output {
    File out_stdout = stdout()
  }
}