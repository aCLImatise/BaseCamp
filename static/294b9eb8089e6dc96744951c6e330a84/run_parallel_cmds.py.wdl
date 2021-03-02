version 1.0

task RunParallelCmdspy {
  command <<<
    run_parallel_cmds_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}