version 1.0

task Bam2bedGnuParallelmegarow {
  command <<<
    bam2bed_gnuParallel_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}