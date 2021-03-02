version 1.0

task Bpipeslurmsh {
  command <<<
    bpipe_slurm_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}