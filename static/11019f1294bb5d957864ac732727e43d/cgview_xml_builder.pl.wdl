version 1.0

task CgviewXmlBuilderpl {
  command <<<
    cgview_xml_builder_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}