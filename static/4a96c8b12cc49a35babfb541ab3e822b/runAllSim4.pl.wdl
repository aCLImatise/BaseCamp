version 1.0

task RunAllSim4pl {
  command <<<
    runAllSim4_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}