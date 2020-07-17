version 1.0

task AbyssDbCsvTableName {
  input {
    String abyss_db_csv
    String sqlite_repository
    String table_name
  }
  command <<<
    abyss-db-csv table_name \
      ~{abyss_db_csv} \
      ~{sqlite_repository} \
      ~{table_name}
  >>>
  parameter_meta {
    abyss_db_csv: ""
    sqlite_repository: ""
    table_name: ""
  }
}