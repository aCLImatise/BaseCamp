version 1.0

task Contentsxsd {
  command <<<
    Contents_xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}