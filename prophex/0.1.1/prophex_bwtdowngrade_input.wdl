version 1.0

task ProphexBwtdowngradeInput.bwt {
  input {
    String? outputOutputBwt
  }
  command <<<
    prophex bwtdowngrade input.bwt \
      ~{outputOutputBwt}
  >>>
}