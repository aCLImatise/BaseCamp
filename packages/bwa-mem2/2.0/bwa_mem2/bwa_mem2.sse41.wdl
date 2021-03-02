version 1.0

task Bwamem2sse41 {
  command <<<
    bwa_mem2_sse41
  >>>
  output {
    File out_stdout = stdout()
  }
}