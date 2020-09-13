version 1.0

task Bam2starchGnuParalleltypical {
  command <<<
    bam2starch_gnuParallel_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}