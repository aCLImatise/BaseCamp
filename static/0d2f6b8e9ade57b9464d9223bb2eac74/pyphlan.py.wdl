version 1.0

task Pyphlanpy {
  command <<<
    pyphlan_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}