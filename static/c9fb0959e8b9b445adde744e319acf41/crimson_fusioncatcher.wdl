version 1.0

task CrimsonFusioncatcher {
  input {
    String var_input
    String? var_output
  }
  command <<<
    crimson fusioncatcher \
      ~{var_input} \
      ~{var_output}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
  }
}