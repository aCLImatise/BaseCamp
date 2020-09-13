version 1.0

task EnvParallelbash {
  command <<<
    env_parallel_bash
  >>>
  output {
    File out_stdout = stdout()
  }
}