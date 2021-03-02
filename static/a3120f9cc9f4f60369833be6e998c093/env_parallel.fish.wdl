version 1.0

task EnvParallelfish {
  command <<<
    env_parallel_fish
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}