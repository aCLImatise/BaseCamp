version 1.0

task RecomputeAstatSuperreadsCA8sh {
  command <<<
    recompute_astat_superreads_CA8_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}