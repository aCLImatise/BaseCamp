version 1.0

task Pbmm2 {
  command <<<
    pbmm2
  >>>
  output {
    File out_stdout = stdout()
  }
}