version 1.0

task PReFerSim {
  command <<<
    PReFerSim
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}