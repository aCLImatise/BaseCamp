version 1.0

task EnvParallelpdksh {
  command <<<
    env_parallel_pdksh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}