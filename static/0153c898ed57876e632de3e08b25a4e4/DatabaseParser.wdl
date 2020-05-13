version 1.0

task DatabaseParser {
  input {
    String? xmlXmlFile
  }
  command <<<
    DatabaseParser \
      ~{xmlXmlFile}
  >>>
}