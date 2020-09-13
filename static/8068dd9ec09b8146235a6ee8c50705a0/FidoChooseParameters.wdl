version 1.0

task FidoChooseParameters {
  input {
    String? c
    Boolean? g
    Boolean? a
    Boolean? p
    File graph_file
    File target_decoy_file
  }
  command <<<
    FidoChooseParameters \
      ~{graph_file} \
      ~{target_decoy_file} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if (g) then "-g" else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if (p) then "-p" else ""}
  >>>
  parameter_meta {
    c: ""
    g: ""
    a: ""
    p: ""
    graph_file: ""
    target_decoy_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}