version 1.0

task GrfDbn {
  input {
    String input_fast_a
    String output_dbn
  }
  command <<<
    grf-dbn \
      ~{input_fast_a} \
      ~{output_dbn}
  >>>
  parameter_meta {
    input_fast_a: ""
    output_dbn: ""
  }
}