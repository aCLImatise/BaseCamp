version 1.0

task Pedmerge {
  input {
    String var_output
  }
  command <<<
    pedmerge \
      ~{var_output}
  >>>
  parameter_meta {
    var_output: ""
  }
}