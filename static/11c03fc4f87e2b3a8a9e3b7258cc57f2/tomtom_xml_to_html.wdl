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
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    tomtom_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}