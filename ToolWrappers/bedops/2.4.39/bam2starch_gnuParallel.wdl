version 1.0

task Bam2starchGnuParallel {
  command <<<
    bam2starch_gnuParallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}