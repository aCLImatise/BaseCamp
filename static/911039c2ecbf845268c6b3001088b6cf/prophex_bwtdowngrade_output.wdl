version 1.0

task ProphexBwtdowngradeOutput.bwt {
  input {
    String? inputInputBwt
    String? outputOutputBwt
  }
  command <<<
    prophex bwtdowngrade output.bwt \
      ~{inputInputBwt} \
      ~{outputOutputBwt}
  >>>
}