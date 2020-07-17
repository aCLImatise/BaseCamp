version 1.0

task PsassConvert {
  input {
    String var_input
  }
  command <<<
    psass convert \
      ~{var_input}
  >>>
  parameter_meta {
    var_input: ""
  }
}