version 1.0

task FormatXmlpl {
  command <<<
    format_xml_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}