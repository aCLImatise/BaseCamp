version 1.0

task RegtoolsCisase {
  input {
    String var_command
  }
  command <<<
    regtools cis_ase \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}