version 1.0

task XPressProteinRatioParser {
  input {
    String? protProtXmlFile
  }
  command <<<
    XPressProteinRatioParser \
      ~{protProtXmlFile}
  >>>
}