version 1.0

task Hgsqldump {
  input {
    String database
    String? tables
  }
  command <<<
    hgsqldump \
      ~{database} \
      ~{tables}
  >>>
  parameter_meta {
    database: ""
    tables: ""
  }
}