version 1.0

task Datmapy {
  command <<<
    datma_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}