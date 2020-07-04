version 1.0

task RemovePseudoknotsSmp {
  input {
    String remove_pseudo_knots
    String input_ct_file
    String output_ct_file
  }
  command <<<
    RemovePseudoknots-smp \
      ~{remove_pseudo_knots} \
      ~{input_ct_file} \
      ~{output_ct_file}
  >>>
  parameter_meta {
    remove_pseudo_knots: ""
    input_ct_file: ""
    output_ct_file: ""
  }
}