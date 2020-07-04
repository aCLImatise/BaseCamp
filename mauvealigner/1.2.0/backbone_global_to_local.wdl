version 1.0

task BackboneGlobalToLocal {
  input {
    String x_mfa_file
    String backbone_file
    String output_file
  }
  command <<<
    backbone_global_to_local \
      ~{x_mfa_file} \
      ~{backbone_file} \
      ~{output_file}
  >>>
  parameter_meta {
    x_mfa_file: ""
    backbone_file: ""
    output_file: ""
  }
}