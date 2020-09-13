version 1.0

task DefaultMassCalxsd {
  command <<<
    DefaultMassCal_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}