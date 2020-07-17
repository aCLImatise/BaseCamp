version 1.0

task FidoChooseParameters {
  input {
    Boolean? p
    Boolean? a
    Boolean? g
    String? c
    String graph_file
    String target_decoy_file
  }
  command <<<
    FidoChooseParameters \
      ~{graph_file} \
      ~{target_decoy_file} \
      ~{true="-p" false="" p} \
      ~{true="-a" false="" a} \
      ~{true="-g" false="" g} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    a: ""
    g: ""
    c: ""
    graph_file: ""
    target_decoy_file: ""
  }
}