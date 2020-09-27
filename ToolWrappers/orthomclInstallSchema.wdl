version 1.0

task OrthomclInstallSchema {
  input {
    String config_file
    String sql_log_file
    String table_suffix
  }
  command <<<
    orthomclInstallSchema \
      ~{config_file} \
      ~{sql_log_file} \
      ~{table_suffix}
  >>>
  parameter_meta {
    config_file: ""
    sql_log_file: ""
    table_suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}