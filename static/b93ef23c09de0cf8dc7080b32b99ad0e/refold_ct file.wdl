version 1.0

task RefoldCt file {
  input {
    String? saveSaveFile
    String? ctCtFile
  }
  command <<<
    refold ct file \
      ~{saveSaveFile} \
      ~{ctCtFile}
  >>>
}