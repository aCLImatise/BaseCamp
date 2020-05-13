version 1.0

task ProbKnotSmp {
  input {
    String? probProbKnot
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    ProbKnot-smp \
      ~{probProbKnot} \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}