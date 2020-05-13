version 1.0

task ProbablePairCt file {
  input {
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    ProbablePair ct file \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}