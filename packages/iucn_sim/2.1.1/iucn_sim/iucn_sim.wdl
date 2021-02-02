version 1.0

task IucnSim {
  command <<<
    iucn_sim
  >>>
  output {
    File out_stdout = stdout()
  }
}