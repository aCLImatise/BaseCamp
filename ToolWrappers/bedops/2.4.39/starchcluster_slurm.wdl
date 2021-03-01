version 1.0

task StarchclusterSlurm {
  command <<<
    starchcluster_slurm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}