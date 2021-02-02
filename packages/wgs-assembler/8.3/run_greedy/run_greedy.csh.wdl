version 1.0

task RunGreedycsh {
  command <<<
    run_greedy_csh
  >>>
  output {
    File out_stdout = stdout()
  }
}