version 1.0

task BlobtoolsbuildNodesdb {
  command <<<
    blobtools_build_nodesdb
  >>>
  output {
    File out_stdout = stdout()
  }
}