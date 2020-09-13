version 1.0

task XmlMerge {
  command <<<
    xml_merge
  >>>
  output {
    File out_stdout = stdout()
  }
}