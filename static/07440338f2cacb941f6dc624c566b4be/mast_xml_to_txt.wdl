version 1.0

task MastXmlToTxt {
  input {
    String mast_xml_file
    String mast_text_file
  }
  command <<<
    mast_xml_to_txt \
      ~{mast_xml_file} \
      ~{mast_text_file}
  >>>
  parameter_meta {
    mast_xml_file: ""
    mast_text_file: ""
  }
}