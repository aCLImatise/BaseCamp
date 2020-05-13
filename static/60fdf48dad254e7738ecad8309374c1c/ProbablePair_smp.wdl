version 1.0

task ProbablePairSmp {
  input {
    String? probableProbablePair
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    ProbablePair-smp \
      ~{probableProbablePair} \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}