version 1.0

task Ribo {
  command <<<
    ribo
  >>>
  output {
    File out_stdout = stdout()
  }
}