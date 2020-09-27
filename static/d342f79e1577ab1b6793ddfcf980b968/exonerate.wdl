version 1.0

task Exonerate {
  command <<<
    exonerate
  >>>
  output {
    File out_stdout = stdout()
  }
}