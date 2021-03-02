version 1.0

task BlobtoolsNodesdb {
  input {
    File? nodes
    File? names
  }
  command <<<
    blobtools nodesdb \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nodes: "NCBI nodes.dmp file."
    names: "NCBI names.dmp file."
  }
  output {
    File out_stdout = stdout()
  }
}