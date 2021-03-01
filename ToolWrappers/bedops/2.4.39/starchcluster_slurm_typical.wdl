version 1.0

task StarchclusterSlurmtypical {
  command <<<
    starchcluster_slurm_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}