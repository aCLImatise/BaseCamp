version 1.0

task RespectParser {
  input {
    String? optionsOptions
    String? inputInputFilePepXml
  }
  command <<<
    RespectParser \
      ~{optionsOptions} \
      ~{inputInputFilePepXml}
  >>>
}