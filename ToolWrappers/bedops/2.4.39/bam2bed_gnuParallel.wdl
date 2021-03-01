version 1.0

task Bam2bedGnuParallel {
  command <<<
    bam2bed_gnuParallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}