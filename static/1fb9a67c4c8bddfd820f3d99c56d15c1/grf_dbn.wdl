version 1.0

task GrfDbn {
  input {
    String? inputInputFastA
    String? outputOutputDbn
  }
  command <<<
    grf-dbn \
      ~{inputInputFastA} \
      ~{outputOutputDbn}
  >>>
}