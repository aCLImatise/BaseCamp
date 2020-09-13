version 1.0

task Factor {
  command <<<
    factor
  >>>
  output {
    File out_stdout = stdout()
  }
}