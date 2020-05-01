version 1.0

task KtImportXML {
  input {
    String? xmlXmlFile
  }
  command <<<
    ktImportXML \
      ~{xmlXmlFile}
  >>>
}