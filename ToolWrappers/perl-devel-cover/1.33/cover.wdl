version 1.0

task Cover {
  command <<<
    cover
  >>>
  output {
    File out_stdout = stdout()
  }
}