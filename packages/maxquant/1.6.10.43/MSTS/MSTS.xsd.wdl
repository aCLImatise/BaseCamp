version 1.0

task MSTSxsd {
  command <<<
    MSTS_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}