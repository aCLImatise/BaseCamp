version 1.0

task MastXmlToHtml {
  input {
    String mast_xml_file
    String mast_html_file
  }
  command <<<
    mast_xml_to_html \
      ~{mast_xml_file} \
      ~{mast_html_file}
  >>>
  parameter_meta {
    mast_xml_file: ""
    mast_html_file: ""
  }
}