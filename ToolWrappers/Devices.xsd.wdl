version 1.0

task Devicesxsd {
  command <<<
    Devices_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}