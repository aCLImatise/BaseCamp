version 1.0

task Bwamem2avx512bw {
  command <<<
    bwa_mem2_avx512bw
  >>>
  output {
    File out_stdout = stdout()
  }
}