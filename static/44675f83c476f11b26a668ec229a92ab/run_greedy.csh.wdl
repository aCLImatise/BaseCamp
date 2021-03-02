version 1.0

task RunGreedycsh {
  command <<<
    run_greedy_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}