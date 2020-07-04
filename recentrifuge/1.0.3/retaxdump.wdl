version 1.0

task Retaxdump {
  input {
    File? nodes_path
    Boolean? v
  }
  command <<<
    retaxdump \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    nodes_path: "path for the nodes information files (nodes.dmp and names.dmp from NCBI"
    v: ""
  }
}