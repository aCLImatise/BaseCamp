version 1.0

task MSTSXSpecificxsd {
  command <<<
    MSTS_XSpecific_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}