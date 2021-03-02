version 1.0

task Bam2bedSlurmmegarow {
  command <<<
    bam2bed_slurm_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}