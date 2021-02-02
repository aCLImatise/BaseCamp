version 1.0

task Bam2starchSgefloat128 {
  command <<<
    bam2starch_sge_float128
  >>>
  output {
    File out_stdout = stdout()
  }
}