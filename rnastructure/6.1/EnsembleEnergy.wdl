version 1.0

task EnsembleEnergy {
  input {
    String input_file
  }
  command <<<
    EnsembleEnergy \
      ~{input_file}
  >>>
  parameter_meta {
    input_file: ""
  }
}