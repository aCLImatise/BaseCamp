version 1.0

task KtImportXML {
  input {
    String xml_file
  }
  command <<<
    ktImportXML \
      ~{xml_file}
  >>>
  parameter_meta {
    xml_file: "A file containing XML tags that specify chart attributes and describe the node hierarchy. An XML header is not necessary. For a complete description of XML tags, see: https://sourceforge.net/p/krona/wiki/KronaTools/ _________"
  }
}