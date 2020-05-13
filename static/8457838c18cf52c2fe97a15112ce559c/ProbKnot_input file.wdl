version 1.0

task ProbKnotInput file {
  input {
    String? ctCtFile
  }
  command <<<
    ProbKnot input file \
      ~{ctCtFile}
  >>>
}