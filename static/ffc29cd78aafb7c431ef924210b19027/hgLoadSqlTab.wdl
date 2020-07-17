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
      ~{true="-warn" false="" warn} \
      ~{true="-notOnServer" false="" not_on_server} \
      ~{true="-oldTable" false="" old_table}
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
}