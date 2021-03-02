version 1.0

task FormatXmlplbak {
  command <<<
    format_xml_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}