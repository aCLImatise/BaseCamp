version 1.0

task MSScanXSpecificxsd {
  command <<<
    MSScan_XSpecific_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}