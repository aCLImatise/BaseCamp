version 1.0

task EnvParalleldash {
  command <<<
    env_parallel_dash
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}