version 1.0

task PybdaDimensionreduction {
  input {
    String config
    String spark
  }
  command <<<
    pybda dimension_reduction \
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