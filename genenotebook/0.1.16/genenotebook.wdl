version 1.0

task Genenotebook {
  input {
    String? var_command
  }
  command <<<
    genenotebook \
      ~{var_command}
  >>>
  parameter_meta {
    var_command: ""
  }
}