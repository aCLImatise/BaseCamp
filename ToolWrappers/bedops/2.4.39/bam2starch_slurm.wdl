version 1.0

task Bam2starchSlurm {
  command <<<
    bam2starch_slurm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}