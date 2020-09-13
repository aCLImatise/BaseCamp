version 1.0

task PrepareDiscovarGenome {
  command <<<
    PrepareDiscovarGenome
  >>>
  output {
    File out_stdout = stdout()
  }
}