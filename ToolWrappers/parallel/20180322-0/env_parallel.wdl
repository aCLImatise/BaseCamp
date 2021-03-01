version 1.0

task EnvParallel {
  command <<<
    env_parallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}