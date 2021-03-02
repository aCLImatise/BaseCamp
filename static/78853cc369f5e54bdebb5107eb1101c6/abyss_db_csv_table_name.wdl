version 1.0

task AbyssdbcsvTableName {
  input {
    String abyss_db_csv
    String sqlite_repository
    String table_name
  }
  command <<<
    abyss_db_csv table_name \
      ~{abyss_db_csv} \
      ~{sqlite_repository} \
      ~{table_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    abyss_db_csv: ""
    sqlite_repository: ""
    table_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}