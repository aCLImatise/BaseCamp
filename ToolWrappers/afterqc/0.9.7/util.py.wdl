version 1.0

task Utilpy {
  command <<<
    util_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}