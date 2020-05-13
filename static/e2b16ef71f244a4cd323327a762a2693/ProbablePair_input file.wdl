version 1.0

task ProbablePairInput file {
  input {
    String? ctCtFile
  }
  command <<<
    ProbablePair input file \
      ~{ctCtFile}
  >>>
}