version 1.0

task CrimsonStar {
  input {
    String var_input
    String? var_output
  }
  command <<<
    crimson star \
      ~{var_input} \
      ~{var_output}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
  }
}