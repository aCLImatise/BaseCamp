version 1.0

task Bam2bedGnuParallelfloat128 {
  command <<<
    bam2bed_gnuParallel_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}