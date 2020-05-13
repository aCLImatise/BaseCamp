version 1.0

task MaxExpectSmp {
  input {
    Int? maxMaxExpect
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    MaxExpect-smp \
      ~{maxMaxExpect} \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}