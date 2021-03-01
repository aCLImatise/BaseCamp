version 1.0

task Utilitypy {
  command <<<
    Utility_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}