version 1.0

task RunAllSim4pl {
  command <<<
    runAllSim4_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}