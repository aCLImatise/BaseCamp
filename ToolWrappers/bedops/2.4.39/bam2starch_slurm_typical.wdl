version 1.0

task Bam2starchSlurmtypical {
  command <<<
    bam2starch_slurm_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}