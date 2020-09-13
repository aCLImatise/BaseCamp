version 1.0

task EnvParallelash {
  command <<<
    env_parallel_ash
  >>>
  output {
    File out_stdout = stdout()
  }
}