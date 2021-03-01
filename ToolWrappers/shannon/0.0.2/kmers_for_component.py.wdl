version 1.0

task KmersForComponentpy {
  command <<<
    kmers_for_component_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}