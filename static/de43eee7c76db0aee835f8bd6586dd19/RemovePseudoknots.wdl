version 1.0

task RemovePseudoknots {
  input {
    String input_ct_file
    String output_ct_file
  }
  command <<<
    RemovePseudoknots \
      ~{input_ct_file} \
      ~{output_ct_file}
  >>>
  parameter_meta {
    input_ct_file: ""
    output_ct_file: ""
  }
}