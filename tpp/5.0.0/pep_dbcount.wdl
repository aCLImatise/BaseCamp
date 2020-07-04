version 1.0

task PepDbcount {
  input {
    String digest_db_output
  }
  command <<<
    pep_dbcount \
      ~{digest_db_output}
  >>>
  parameter_meta {
    digest_db_output: ""
  }
}