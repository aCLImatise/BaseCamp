version 1.0

task StaramrDbDatabases {
  input {
    String star_amr
    String db
  }
  command <<<
    staramr db databases_ \
      ~{star_amr} \
      ~{db}
  >>>
  parameter_meta {
    star_amr: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}