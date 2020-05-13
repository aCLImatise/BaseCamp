version 1.0

task DremeXmlToHtmlDREME XML file {
  input {
    String? dreDreMeHtmlFile
  }
  command <<<
    dreme_xml_to_html DREME XML file \
      ~{dreDreMeHtmlFile}
  >>>
}