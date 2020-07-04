version 1.0

task DremeXmlToTxt {
  input {
    String dre_me_xml_to_html
    String dre_me_xml_file
    String dre_me_html_file
  }
  command <<<
    dreme_xml_to_txt \
      ~{dre_me_xml_to_html} \
      ~{dre_me_xml_file} \
      ~{dre_me_html_file}
  >>>
  parameter_meta {
    dre_me_xml_to_html: ""
    dre_me_xml_file: ""
    dre_me_html_file: ""
  }
}