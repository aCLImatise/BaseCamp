version 1.0

task BridgeResult2Cytoscapepl {
  command <<<
    bridgeResult2Cytoscape_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}