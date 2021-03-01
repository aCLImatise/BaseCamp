version 1.0

task Retaxdump {
  input {
    File? nodes_path
    Boolean? v
  }
  command <<<
    retaxdump \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/recentrifuge:1.3.1--py_0"
  }
  parameter_meta {
    nodes_path: "path for the nodes information files (nodes.dmp and\\nnames.dmp from NCBI)"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}