version 1.0

task Plotgen {
  command <<<
    plotgen
  >>>
  output {
    File out_stdout = stdout()
  }
}