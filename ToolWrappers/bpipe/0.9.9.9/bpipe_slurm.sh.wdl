version 1.0

task Bpipeslurmsh {
  command <<<
    bpipe_slurm_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}