version 1.0

task MemeXmlToHtml {
  input {
    String meme_xml_file
    String meme_html_file
  }
  command <<<
    meme_xml_to_html \
      ~{meme_xml_file} \
      ~{meme_html_file}
  >>>
  parameter_meta {
    meme_xml_file: ""
    meme_html_file: ""
  }
}