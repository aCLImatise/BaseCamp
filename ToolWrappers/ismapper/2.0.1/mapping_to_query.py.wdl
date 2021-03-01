version 1.0

task MappingToQuerypy {
  command <<<
    mapping_to_query_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}