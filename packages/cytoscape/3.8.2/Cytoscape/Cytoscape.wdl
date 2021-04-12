version 1.0

task Cytoscape {
  command <<<
    Cytoscape
  >>>
  runtime {
    docker: "quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0"
  }
  output {
    File out_stdout = stdout()
  }
}