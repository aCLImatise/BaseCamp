version 1.0

task StarchclusterSlurm {
  command <<<
    starchcluster_slurm
  >>>
  output {
    File out_stdout = stdout()
  }
}