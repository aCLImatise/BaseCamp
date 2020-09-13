version 1.0

task StarchclusterSlurmtypical {
  command <<<
    starchcluster_slurm_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}