version 1.0

task MSActualDefsxsd {
  command <<<
    MSActualDefs_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}