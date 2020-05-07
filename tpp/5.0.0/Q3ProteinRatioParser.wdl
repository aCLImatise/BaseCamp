version 1.0

task Q3ProteinRatioParser {
  input {
    String? protProtXmlFile
  }
  command <<<
    Q3ProteinRatioParser \
      ~{protProtXmlFile}
  >>>
}