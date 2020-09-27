version 1.0

task BackboneGlobalToLocal {
  input {
    File x_mfa_file
    File backbone_file
    File output_file
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
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}