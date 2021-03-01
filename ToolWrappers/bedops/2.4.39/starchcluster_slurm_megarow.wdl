version 1.0

task StarchclusterSlurmmegarow {
  command <<<
    starchcluster_slurm_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}