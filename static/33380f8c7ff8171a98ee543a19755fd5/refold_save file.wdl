version 1.0

task RefoldSave file {
  input {
    String? ctCtFile
  }
  command <<<
    refold save file \
      ~{ctCtFile}
  >>>
}