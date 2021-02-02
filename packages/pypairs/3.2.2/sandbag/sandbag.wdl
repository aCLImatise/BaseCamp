version 1.0

task Sandbag {
  command <<<
    sandbag
  >>>
  output {
    File out_stdout = stdout()
  }
}