version 1.0

task HgLoadSqlTab {
  input {
    Boolean? warn
    Boolean? not_on_server
    Boolean? old_table
    String database
    String table
    File file_dot_sql
    File file
  }
  command <<<
    hgLoadSqlTab \
      ~{database} \
      ~{table} \
      ~{file_dot_sql} \
      ~{file} \
      ~{if (warn) then "-warn" else ""} \
      ~{if (not_on_server) then "-notOnServer" else ""} \
      ~{if (old_table) then "-oldTable" else ""}
  >>>
  parameter_meta {
    warn: "- warn instead of abort on mysql errors or warnings"
    not_on_server: "- file is *not* in a directory that the mysql server can see"
    old_table: "- add to existing table"
    database: ""
    table: ""
    file_dot_sql: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}