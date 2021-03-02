version 1.0

task AbyssdbcsvSQLiteRepository {
  input {
    String table_name
  }
  command <<<
    abyss_db_csv SQLite_repository \
      ~{table_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    table_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}