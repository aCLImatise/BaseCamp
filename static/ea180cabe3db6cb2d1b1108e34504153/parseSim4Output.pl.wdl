version 1.0

task ParseSim4Outputpl {
  command <<<
    parseSim4Output_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}