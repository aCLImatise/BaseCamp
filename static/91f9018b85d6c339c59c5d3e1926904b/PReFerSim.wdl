version 1.0

task PReFerSim {
  command <<<
    PReFerSim
  >>>
  output {
    File out_stdout = stdout()
  }
}