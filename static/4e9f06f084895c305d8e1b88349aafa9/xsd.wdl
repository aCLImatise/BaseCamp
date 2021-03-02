version 1.0

task Xsd {
  command <<<
    xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}