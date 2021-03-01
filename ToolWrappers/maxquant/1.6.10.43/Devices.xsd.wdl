version 1.0

task Devicesxsd {
  command <<<
    Devices_xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}