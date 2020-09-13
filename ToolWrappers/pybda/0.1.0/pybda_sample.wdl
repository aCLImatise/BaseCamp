version 1.0

task PybdaSample {
  input {
    String config
    String spark
  }
  command <<<
    pybda sample \
      ~{config} \
      ~{spark}
  >>>
  parameter_meta {
    config: ""
    spark: ""
  }
  output {
    File out_stdout = stdout()
  }
}