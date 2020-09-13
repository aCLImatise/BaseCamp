version 1.0

task RunParallelCmdspy {
  command <<<
    run_parallel_cmds_py
  >>>
  output {
    File out_stdout = stdout()
  }
}