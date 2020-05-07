version 1.0

task EnsembleEnergy {
  input {
    String? inputInputFile
  }
  command <<<
    EnsembleEnergy \
      ~{inputInputFile}
  >>>
}