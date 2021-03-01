version 1.0

task Utilitypy {
  command <<<
    utility_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}