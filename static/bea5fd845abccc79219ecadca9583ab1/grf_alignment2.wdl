version 1.0

task GrfAlignment2 {
  input {
    String var_input
    String var_output
  }
  command <<<
    grf-alignment2 \
      ~{var_input} \
      ~{var_output}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
  }
}