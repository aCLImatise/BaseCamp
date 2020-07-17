version 1.0

task TomtomXmlToHtml {
  input {
    String tomtom_xml_file
    String tomtom_html_file
  }
  command <<<
    tomtom_xml_to_html \
      ~{tomtom_xml_file} \
      ~{tomtom_html_file}
  >>>
  parameter_meta {
    tomtom_xml_file: ""
    tomtom_html_file: ""
  }
}