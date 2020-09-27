version 1.0

task MastXmlToHtml {
  input {
    File mast_xml_file
  }
  command <<<
    mast_xml_to_html \
      ~{mast_xml_file}
  >>>
  parameter_meta {
    mast_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}