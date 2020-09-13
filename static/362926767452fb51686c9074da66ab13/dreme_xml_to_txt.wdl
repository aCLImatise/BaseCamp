version 1.0

task DremeXmlToTxt {
  input {
    String dre_me_xml_to_html
    File dre_me_xml_file
  }
  command <<<
    dreme_xml_to_txt \
      ~{dre_me_xml_to_html} \
      ~{dre_me_xml_file}
  >>>
  parameter_meta {
    dre_me_xml_to_html: ""
    dre_me_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}