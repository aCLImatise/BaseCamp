version 1.0

task StarchclusterSlurmfloat128 {
  command <<<
    starchcluster_slurm_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}