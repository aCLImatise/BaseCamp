version 1.0

task Bam2starchSlurm {
  command <<<
    bam2starch_slurm
  >>>
  output {
    File out_stdout = stdout()
  }
}