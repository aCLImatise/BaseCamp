version 1.0

task DremeXmlToHtmlDREME HTML file {
  input {
    String? dreDreMeXmlFile
    String? dreDreMeHtmlFile
  }
  command <<<
    dreme_xml_to_html DREME HTML file \
      ~{dreDreMeXmlFile} \
      ~{dreDreMeHtmlFile}
  >>>
}