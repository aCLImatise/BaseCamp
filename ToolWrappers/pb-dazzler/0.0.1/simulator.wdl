version 1.0

task Simulator {
  command <<<
    simulator
  >>>
  output {
    File out_stdout = stdout()
  }
}