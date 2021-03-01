version 1.0

task GetUniqueProteinOpy {
  command <<<
    getUniqueProtein_o_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}