version 1.0

task KmersForComponentpy {
  command <<<
    kmers_for_component_py
  >>>
  output {
    File out_stdout = stdout()
  }
}