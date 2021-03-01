version 1.0

task BlobtoolsbuildNodesdb {
  command <<<
    blobtools_build_nodesdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}