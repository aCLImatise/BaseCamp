version 1.0

task Bam2bedSlurmtypical {
  command <<<
    bam2bed_slurm_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}