version 1.0

task Makerep {
  command <<<
    makerep
  >>>
  output {
    File out_stdout = stdout()
  }
}