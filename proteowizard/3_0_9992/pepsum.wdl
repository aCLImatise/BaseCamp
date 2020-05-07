version 1.0

task Pepsum {
  input {
    String? pepPepXmlFilename
  }
  command <<<
    pepsum \
      ~{pepPepXmlFilename}
  >>>
}