version 1.0

task BridgeResult2Cytoscapepl {
  command <<<
    bridgeResult2Cytoscape_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}