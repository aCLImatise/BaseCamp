version 1.0

task EnvParallel {
  command <<<
    env_parallel
  >>>
  output {
    File out_stdout = stdout()
  }
}