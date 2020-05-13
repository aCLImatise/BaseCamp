version 1.0

task MaxExpectInput file {
  input {
    String? ctCtFile
  }
  command <<<
    MaxExpect input file \
      ~{ctCtFile}
  >>>
}