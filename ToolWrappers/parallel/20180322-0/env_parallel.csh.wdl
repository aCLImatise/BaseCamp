version 1.0

task EnvParallelcsh {
  command <<<
    env_parallel_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}