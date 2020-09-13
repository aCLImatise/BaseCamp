version 1.0

task Fluxsimulator {
  command <<<
    flux_simulator
  >>>
  output {
    File out_stdout = stdout()
  }
}