version 1.0

task RecomputeAstatSuperreadssh {
  command <<<
    recompute_astat_superreads_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}