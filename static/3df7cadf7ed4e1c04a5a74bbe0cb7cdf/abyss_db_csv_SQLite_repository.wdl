version 1.0

task AbyssDbCsvSQLiteRepository {
  input {
    String table_name
  }
  command <<<
    abyss-db-csv SQLite_repository \
      ~{table_name}
  >>>
  parameter_meta {
    table_name: ""
  }
}