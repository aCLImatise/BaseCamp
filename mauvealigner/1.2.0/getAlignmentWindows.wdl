version 1.0

task GetAlignmentWindows {
  input {
    String x_mfa_alignment
    String window_length
    String window_shift_amount
    String base_output_filename
  }
  command <<<
    getAlignmentWindows \
      ~{x_mfa_alignment} \
      ~{window_length} \
      ~{window_shift_amount} \
      ~{base_output_filename}
  >>>
  parameter_meta {
    x_mfa_alignment: ""
    window_length: ""
    window_shift_amount: ""
    base_output_filename: ""
  }
}