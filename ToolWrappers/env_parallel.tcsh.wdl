version 1.0

task EnvParalleltcsh {
  command <<<
    env_parallel_tcsh
  >>>
  output {
    File out_stdout = stdout()
  }
}