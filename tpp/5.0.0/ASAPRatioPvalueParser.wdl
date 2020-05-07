version 1.0

task ASAPRatioPvalueParser {
  input {
    String? xmlXmlFile
    String? pngPngFile
  }
  command <<<
    ASAPRatioPvalueParser \
      ~{xmlXmlFile} \
      ~{pngPngFile}
  >>>
}