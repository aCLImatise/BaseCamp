version 1.0

task Bam2starchGnuParallelfloat128 {
  command <<<
    bam2starch_gnuParallel_float128
  >>>
  output {
    File out_stdout = stdout()
  }
}