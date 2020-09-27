version 1.0

task AutoXml {
  command <<<
    autoXml
  >>>
  output {
    File out_stdout = stdout()
  }
}