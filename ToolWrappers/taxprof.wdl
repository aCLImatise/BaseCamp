version 1.0

task Taxprof {
  command <<<
    taxprof
  >>>
  output {
    File out_stdout = stdout()
  }
}