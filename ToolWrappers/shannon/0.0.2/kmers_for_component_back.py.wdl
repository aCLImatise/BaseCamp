version 1.0

task KmersForComponentBackpy {
  command <<<
    kmers_for_component_back_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}