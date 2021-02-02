version 1.0

task Bam2starchSlurmmegarow {
  command <<<
    bam2starch_slurm_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}