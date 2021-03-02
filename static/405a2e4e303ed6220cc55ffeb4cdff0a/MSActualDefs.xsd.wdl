version 1.0

task MSActualDefsxsd {
  command <<<
    MSActualDefs_xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}