version 1.0

task PybdaRun {
  input {
    String config
    String spark
  }
  command <<<
    pybda run \
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