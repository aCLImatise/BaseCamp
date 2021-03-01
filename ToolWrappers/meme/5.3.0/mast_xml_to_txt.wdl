version 1.0

task MastXmlToTxt {
  input {
    File mast_xml_file
  }
  command <<<
    mast_xml_to_txt \
      ~{mast_xml_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    mast_xml_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}