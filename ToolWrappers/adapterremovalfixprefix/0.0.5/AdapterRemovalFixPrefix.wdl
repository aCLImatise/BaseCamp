version 1.0

task AdapterRemovalFixPrefix {
  command <<<
    AdapterRemovalFixPrefix
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}