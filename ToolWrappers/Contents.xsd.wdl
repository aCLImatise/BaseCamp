version 1.0

task Contentsxsd {
  command <<<
    Contents_xsd
  >>>
  output {
    File out_stdout = stdout()
  }
}