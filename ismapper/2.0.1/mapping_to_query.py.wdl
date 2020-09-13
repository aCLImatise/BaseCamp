version 1.0

task MappingToQuerypy {
  command <<<
    mapping_to_query_py
  >>>
  output {
    File out_stdout = stdout()
  }
}