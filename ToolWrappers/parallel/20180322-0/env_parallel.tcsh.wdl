version 1.0

task EnvParalleltcsh {
  command <<<
    env_parallel_tcsh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}