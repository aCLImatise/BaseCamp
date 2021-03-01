version 1.0

task RMETLTjianghiteducn {
  input {
    String rm_etl
  }
  command <<<
    rMETL tjiang_hit_edu_cn \
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