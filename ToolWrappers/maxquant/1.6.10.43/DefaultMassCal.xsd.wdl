version 1.0

task DefaultMassCalxsd {
  command <<<
    DefaultMassCal_xsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}