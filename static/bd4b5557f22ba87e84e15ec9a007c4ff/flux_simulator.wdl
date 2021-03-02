version 1.0

task Fluxsimulator {
  command <<<
    flux_simulator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}