version 1.0

task EnvParallelzsh {
  command <<<
    env_parallel_zsh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}