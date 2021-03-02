version 1.0

task MSScanXSpecificxsd {
  command <<<
    MSScan_XSpecific_xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}