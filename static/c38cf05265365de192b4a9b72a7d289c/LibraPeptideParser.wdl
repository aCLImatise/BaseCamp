version 1.0

task LibraPeptideParser {
  input {
    Boolean cC
    String? pepPepXmlFile
    String? parameterParameterFile
  }
  command <<<
    LibraPeptideParser \
      ~{pepPepXmlFile} \
      ~{true="-c" false="" cC} \
      ~{parameterParameterFile}
  >>>
}