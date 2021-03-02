version 1.0

task PybdaRegression {
  input {
    String config
    String spark
  }
  command <<<
    pybda regression \
      ~{config} \
      ~{spark}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: ""
    spark: ""
  }
  output {
    File out_stdout = stdout()
  }
}