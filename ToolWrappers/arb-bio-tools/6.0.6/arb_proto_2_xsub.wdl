version 1.0

task ArbProto2Xsub {
  input {
    String prototypes_doth
    String xs_header
    String type_map
  }
  command <<<
    arb_proto_2_xsub \
      ~{prototypes_doth} \
      ~{xs_header} \
      ~{type_map}
  >>>
  parameter_meta {
    prototypes_doth: ""
    xs_header: ""
    type_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}