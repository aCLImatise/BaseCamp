version 1.0

task MappingToRefpy {
  command <<<
    mapping_to_ref_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}