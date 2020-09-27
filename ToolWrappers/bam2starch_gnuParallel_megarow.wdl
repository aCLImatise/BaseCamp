version 1.0

task Bam2starchGnuParallelmegarow {
  command <<<
    bam2starch_gnuParallel_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}