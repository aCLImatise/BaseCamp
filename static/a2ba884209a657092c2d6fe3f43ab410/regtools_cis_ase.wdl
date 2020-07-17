version 1.0

task RegtoolsCisAse {
  input {
    String var_command
  }
  command <<<
    regtools cis-ase \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}