version 1.0

task CreateBackboneMFA {
  input {
    String input_interval_file
    String output_mfa_name
  }
  command <<<
    createBackboneMFA \
      ~{input_interval_file} \
      ~{output_mfa_name}
  >>>
  parameter_meta {
    input_interval_file: ""
    output_mfa_name: ""
  }
}