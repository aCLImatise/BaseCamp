version 1.0

task ProbKnot {
  input {
    String input_file
    String ct_file
  }
  command <<<
    ProbKnot \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    input_file: ""
    ct_file: ""
  }
}