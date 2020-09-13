version 1.0

task MemeXmlToHtml {
  input {
    File meme_xml_file
  }
  command <<<
    meme_xml_to_html \
      ~{meme_xml_file}
  >>>
  parameter_meta {
    meme_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}