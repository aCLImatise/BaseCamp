version 1.0

task GraphlanLibpy {
  command <<<
    graphlan_lib_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}