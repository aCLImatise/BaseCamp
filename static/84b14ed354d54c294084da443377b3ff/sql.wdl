version 1.0

task Sql {
  input {
    String db_url
    String? sqlcommand
  }
  command <<<
    sql \
      ~{db_url} \
      ~{sqlcommand}
  >>>
  parameter_meta {
    db_url: ""
    sqlcommand: ""
  }
}