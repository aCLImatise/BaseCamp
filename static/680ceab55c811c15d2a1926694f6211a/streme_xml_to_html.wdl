version 1.0

task StremeXmlToHtml {
  input {
    File s_treme_xml_file
  }
  command <<<
    streme_xml_to_html \
      ~{s_treme_xml_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    s_treme_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}