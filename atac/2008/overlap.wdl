version 1.0

task Overlap {
  command <<<
    overlap
  >>>
  output {
    File out_stdout = stdout()
  }
}