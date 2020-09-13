version 1.0

task Cytoscape {
  command <<<
    Cytoscape
  >>>
  output {
    File out_stdout = stdout()
  }
}