version 1.0

task StarchclusterSlurmmegarow {
  command <<<
    starchcluster_slurm_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}