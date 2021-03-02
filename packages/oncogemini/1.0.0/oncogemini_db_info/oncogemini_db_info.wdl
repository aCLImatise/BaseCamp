version 1.0

task OncogeminiDbInfo {
  input {
    String db
  }
  command <<<
    oncogemini db_info \
      ~{db}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    db: "The name of the database to be updated."
  }
  output {
    File out_stdout = stdout()
  }
}