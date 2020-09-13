version 1.0

task Hgsqldump {
  input {
    String database
  }
  command <<<
    hgsqldump \
      ~{database}
  >>>
  parameter_meta {
    database: ""
  }
  output {
    File out_stdout = stdout()
  }
}