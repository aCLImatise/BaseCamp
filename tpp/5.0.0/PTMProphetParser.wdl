version 1.0

task PTMProphetParser {
  input {
    String? optionsOptions
    String? inputInputFilePepXml
    String? outputOutputFile
  }
  command <<<
    PTMProphetParser \
      ~{optionsOptions} \
      ~{inputInputFilePepXml} \
      ~{outputOutputFile}
  >>>
}