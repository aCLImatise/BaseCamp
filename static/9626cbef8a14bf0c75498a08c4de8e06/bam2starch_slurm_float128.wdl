version 1.0

task Bam2starchSlurmfloat128 {
  command <<<
    bam2starch_slurm_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}