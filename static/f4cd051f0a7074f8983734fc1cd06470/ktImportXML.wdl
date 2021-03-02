version 1.0

task KtImportXML {
  input {
    String xml_file
  }
  command <<<
    ktImportXML \
      ~{xml_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xml_file: "A file containing XML tags that specify chart attributes and\\ndescribe the node hierarchy. An XML header is not necessary. For a\\ncomplete description of XML tags, see:\\nhttps://sourceforge.net/p/krona/wiki/KronaTools/\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}