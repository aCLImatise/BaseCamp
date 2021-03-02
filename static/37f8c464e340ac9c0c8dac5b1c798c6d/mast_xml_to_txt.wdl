version 1.0

task MastXmlToTxt {
  input {
    File mast_xml_file
  }
  command <<<
    mast_xml_to_txt \
      ~{mast_xml_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mast_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}