version 1.0

task RMETLSTAGE {
  input {
    String rm_etl
  }
  command <<<
    rMETL STAGE \
      ~{rm_etl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rm_etl: ""
  }
  output {
    File out_stdout = stdout()
  }
}