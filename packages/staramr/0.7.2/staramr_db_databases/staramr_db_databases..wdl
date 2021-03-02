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
  runtime {
    docker: "quay.io/biocontainers/staramr:0.7.2--py_0"
  }
  parameter_meta {
    star_amr: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}