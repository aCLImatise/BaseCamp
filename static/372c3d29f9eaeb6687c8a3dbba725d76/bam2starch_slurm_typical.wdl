version 1.0

task Bam2starchSlurmtypical {
  command <<<
    bam2starch_slurm_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}