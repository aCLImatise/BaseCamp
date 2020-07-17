version 1.0

task Stochastic {
  input {
    String input_file
    String ct_file
  }
  command <<<
    stochastic \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    input_file: ""
    ct_file: ""
  }
}