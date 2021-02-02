version 1.0

task Mean {
  command <<<
    mean
  >>>
  output {
    File out_stdout = stdout()
  }
}