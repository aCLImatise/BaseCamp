version 1.0

task AutoXml {
  command <<<
    autoXml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}