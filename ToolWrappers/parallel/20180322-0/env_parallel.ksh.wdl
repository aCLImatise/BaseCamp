version 1.0

task EnvParallelksh {
  command <<<
    env_parallel_ksh
  >>>
  output {
    File out_stdout = stdout()
  }
}