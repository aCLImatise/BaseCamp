version 1.0

task Bam2bedGnuParalleltypical {
  command <<<
    bam2bed_gnuParallel_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}