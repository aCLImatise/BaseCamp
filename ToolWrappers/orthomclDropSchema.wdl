version 1.0

task OrthomclDropSchema {
  input {
    String config_file
    String sql_log_file
  }
  command <<<
    orthomclDropSchema \
      ~{config_file} \
      ~{sql_log_file}
  >>>
  parameter_meta {
    config_file: ""
    sql_log_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}