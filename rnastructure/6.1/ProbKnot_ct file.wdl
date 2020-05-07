version 1.0

task ProbKnotCt file {
  input {
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    ProbKnot ct file \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}