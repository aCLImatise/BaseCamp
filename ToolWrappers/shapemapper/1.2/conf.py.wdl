version 1.0

task Confpy {
  command <<<
    conf_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}