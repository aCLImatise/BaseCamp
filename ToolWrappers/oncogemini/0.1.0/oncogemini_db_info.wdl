version 1.0

task OncogeminiDbInfo {
  input {
    String db
  }
  command <<<
    oncogemini db_info \
      ~{db}
  >>>
  parameter_meta {
    db: "The name of the database to be updated."
  }
  output {
    File out_stdout = stdout()
  }
}