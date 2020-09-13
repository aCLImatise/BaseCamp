version 1.0

task EnvParallelsh {
  command <<<
    env_parallel_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}