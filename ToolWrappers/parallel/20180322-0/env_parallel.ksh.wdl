version 1.0

task EnvParallelksh {
  command <<<
    env_parallel_ksh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}