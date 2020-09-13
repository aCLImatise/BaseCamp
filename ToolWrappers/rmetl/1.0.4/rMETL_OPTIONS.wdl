version 1.0

task RMETLOPTIONS {
  input {
    String rm_etl
  }
  command <<<
    rMETL OPTIONS \
      ~{rm_etl}
  >>>
  parameter_meta {
    rm_etl: ""
  }
  output {
    File out_stdout = stdout()
  }
}