version 1.0

task RecomputeAstatSuperreadsCA8sh {
  command <<<
    recompute_astat_superreads_CA8_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}