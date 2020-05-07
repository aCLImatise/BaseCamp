version 1.0

task ProbScan {
  input {
    String? inputInputFile
  }
  command <<<
    ProbScan \
      ~{inputInputFile}
  >>>
}