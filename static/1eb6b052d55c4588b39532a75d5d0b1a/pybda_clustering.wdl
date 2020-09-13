version 1.0

task PybdaClustering {
  input {
    String config
    String spark
  }
  command <<<
    pybda clustering \
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