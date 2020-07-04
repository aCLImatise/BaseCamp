version 1.0

task SerobaGetPneumocatDatabaseDir {
  input {
    String se_rob_a
    String var_command
  }
  command <<<
    seroba getPneumocat database_dir \
      ~{se_rob_a} \
      ~{var_command}
  >>>
  parameter_meta {
    se_rob_a: ""
    var_command: ""
  }
}