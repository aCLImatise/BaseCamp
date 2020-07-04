version 1.0

task ProbScan {
  input {
    String input_file
  }
  command <<<
    ProbScan \
      ~{input_file}
  >>>
  parameter_meta {
    input_file: ""
  }
}