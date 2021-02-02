version 1.0

task AdapterRemovalFixPrefix {
  command <<<
    AdapterRemovalFixPrefix
  >>>
  output {
    File out_stdout = stdout()
  }
}