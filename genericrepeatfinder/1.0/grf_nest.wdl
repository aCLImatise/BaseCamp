version 1.0

task GrfNest {
  input {
    String input_fast_a
    String genome_fast_a
    String output_fast_a
  }
  command <<<
    grf-nest \
      ~{input_fast_a} \
      ~{genome_fast_a} \
      ~{output_fast_a}
  >>>
  parameter_meta {
    input_fast_a: ""
    genome_fast_a: ""
    output_fast_a: ""
  }
}