version 1.0

task Bam2bedSgefloat128 {
  command <<<
    bam2bed_sge_float128
  >>>
  output {
    File out_stdout = stdout()
  }
}