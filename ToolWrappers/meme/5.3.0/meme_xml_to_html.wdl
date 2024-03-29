version 1.0

task MemeXmlToHtml {
  input {
    File meme_xml_file
  }
  command <<<
    meme_xml_to_html \
      ~{meme_xml_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    meme_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}