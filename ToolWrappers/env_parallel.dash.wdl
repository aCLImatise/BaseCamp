version 1.0

task EnvParalleldash {
  command <<<
    env_parallel_dash
  >>>
  output {
    File out_stdout = stdout()
  }
}