version 1.0

task MappingToRefpy {
  command <<<
    mapping_to_ref_py
  >>>
  output {
    File out_stdout = stdout()
  }
}