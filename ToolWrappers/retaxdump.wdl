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
  parameter_meta {
    nodes_path: "path for the nodes information files (nodes.dmp and\\nnames.dmp from NCBI)"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}