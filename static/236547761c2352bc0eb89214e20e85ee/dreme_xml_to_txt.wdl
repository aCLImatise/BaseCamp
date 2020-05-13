version 1.0

task DremeXmlToTxt {
  input {
    String? dreDreMeXmlToHtml
    String? dreDreMeXmlFile
    String? dreDreMeHtmlFile
  }
  command <<<
    dreme_xml_to_txt \
      ~{dreDreMeXmlToHtml} \
      ~{dreDreMeXmlFile} \
      ~{dreDreMeHtmlFile}
  >>>
}