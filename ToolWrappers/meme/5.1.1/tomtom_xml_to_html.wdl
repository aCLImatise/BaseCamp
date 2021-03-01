version 1.0

task TomtomXmlToHtml {
  input {
    File tomtom_xml_file
  }
  command <<<
    tomtom_xml_to_html \
      ~{tomtom_xml_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tomtom_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}