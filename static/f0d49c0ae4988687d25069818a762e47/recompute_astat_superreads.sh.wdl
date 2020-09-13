version 1.0

task RecomputeAstatSuperreadssh {
  command <<<
    recompute_astat_superreads_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}