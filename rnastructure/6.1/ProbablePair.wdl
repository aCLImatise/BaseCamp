version 1.0

task ProbablePair {
  input {
    String input_file
    String ct_file
  }
  command <<<
    ProbablePair \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    input_file: ""
    ct_file: ""
  }
}