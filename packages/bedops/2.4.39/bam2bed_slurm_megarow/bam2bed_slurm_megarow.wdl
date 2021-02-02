version 1.0

task Bam2bedSlurmmegarow {
  command <<<
    bam2bed_slurm_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}