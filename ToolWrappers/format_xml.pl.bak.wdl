version 1.0

task FormatXmlplbak {
  command <<<
    format_xml_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}