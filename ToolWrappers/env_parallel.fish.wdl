version 1.0

task EnvParallelfish {
  command <<<
    env_parallel_fish
  >>>
  output {
    File out_stdout = stdout()
  }
}