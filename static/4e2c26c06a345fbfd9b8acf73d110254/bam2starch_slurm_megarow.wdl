version 1.0

task Bam2starchSlurmmegarow {
  command <<<
    bam2starch_slurm_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}