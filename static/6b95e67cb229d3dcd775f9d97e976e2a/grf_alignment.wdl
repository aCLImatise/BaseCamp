version 1.0

task GrfAlignment {
  input {
    String type
    String input_fast_a
    String var_output
  }
  command <<<
    grf-alignment \
      ~{type} \
      ~{input_fast_a} \
      ~{var_output}
  >>>
  parameter_meta {
    type: ""
    input_fast_a: ""
    var_output: ""
  }
}