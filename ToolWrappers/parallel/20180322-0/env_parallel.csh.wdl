version 1.0

task EnvParallelcsh {
  command <<<
    env_parallel_csh
  >>>
  output {
    File out_stdout = stdout()
  }
}