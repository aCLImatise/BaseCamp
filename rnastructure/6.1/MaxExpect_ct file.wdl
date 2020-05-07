version 1.0

task MaxExpectCt file {
  input {
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    MaxExpect ct file \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}