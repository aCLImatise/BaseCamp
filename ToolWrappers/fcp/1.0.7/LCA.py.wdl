version 1.0

task LCApy {
  command <<<
    LCA_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}