version 1.0

task XmlSplit {
  command <<<
    xml_split
  >>>
  output {
    File out_stdout = stdout()
  }
}