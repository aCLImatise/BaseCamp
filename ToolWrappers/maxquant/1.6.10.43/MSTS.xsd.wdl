version 1.0

task MSTSxsd {
  command <<<
    MSTS_xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}