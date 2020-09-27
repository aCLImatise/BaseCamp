version 1.0

task ManageDbrb {
  input {
    String var_command
    String dbname
  }
  command <<<
    manage_db_rb \
      ~{var_command} \
      ~{dbname}
  >>>
  parameter_meta {
    var_command: ""
    dbname: ""
  }
  output {
    File out_stdout = stdout()
  }
}