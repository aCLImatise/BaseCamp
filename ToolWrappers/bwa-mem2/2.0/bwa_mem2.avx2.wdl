version 1.0

task Bwamem2avx2 {
  command <<<
    bwa_mem2_avx2
  >>>
  output {
    File out_stdout = stdout()
  }
}