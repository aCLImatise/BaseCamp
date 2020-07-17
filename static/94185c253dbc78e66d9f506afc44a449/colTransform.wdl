version 1.0

task ColTransform {
  input {
    String column
    String input_dot_tab
    String add_factor
    String mul_factor
    String output_dot_tab
  }
  command <<<
    colTransform \
      ~{column} \
      ~{input_dot_tab} \
      ~{add_factor} \
      ~{mul_factor} \
      ~{output_dot_tab}
  >>>
  parameter_meta {
    column: ""
    input_dot_tab: ""
    add_factor: ""
    mul_factor: ""
    output_dot_tab: ""
  }
}