version 1.0

task PileOMeth {
  input {
    String var_command
  }
  command <<<
    PileOMeth \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}