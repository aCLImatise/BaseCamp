version 1.0

task Bam2bedSlurmfloat128 {
  command <<<
    bam2bed_slurm_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}