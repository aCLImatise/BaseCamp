version 1.0

task JsonCollectDataSourcepy {
  command <<<
    json_collect_data_source_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}