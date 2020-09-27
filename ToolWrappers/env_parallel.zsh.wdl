version 1.0

task EnvParallelzsh {
  command <<<
    env_parallel_zsh
  >>>
  output {
    File out_stdout = stdout()
  }
}