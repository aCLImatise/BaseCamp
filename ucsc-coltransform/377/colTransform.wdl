version 1.0

task ColTransform {
  input {
    String column
    String input_dot_tab
    String add_factor
    String mul_factor
  }
  command <<<
    colTransform \
      ~{column} \
      ~{input_dot_tab} \
      ~{add_factor} \
      ~{mul_factor}
  >>>
  parameter_meta {
    column: ""
    input_dot_tab: ""
    add_factor: ""
    mul_factor: ""
  }
  output {
    File out_stdout = stdout()
  }
}