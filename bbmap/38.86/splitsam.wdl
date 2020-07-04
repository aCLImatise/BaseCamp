version 1.0

task Splitsam.sh {
  input {
    String var_input
    String plus_output
    Int minus_output
    String unmapped_output
  }
  command <<<
    splitsam.sh \
      ~{var_input} \
      ~{plus_output} \
      ~{minus_output} \
      ~{unmapped_output}
  >>>
  parameter_meta {
    var_input: ""
    plus_output: ""
    minus_output: ""
    unmapped_output: ""
  }
}