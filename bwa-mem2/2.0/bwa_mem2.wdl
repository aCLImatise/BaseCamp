version 1.0

task Bwamem2 {
  command <<<
    bwa_mem2
  >>>
  output {
    File out_stdout = stdout()
  }
}