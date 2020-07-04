version 1.0

task RsemEvalEstimateTranscriptLengthDistribution {
  input {
    String input_dot_fast_a
    String parameter_file
  }
  command <<<
    rsem-eval-estimate-transcript-length-distribution \
      ~{input_dot_fast_a} \
      ~{parameter_file}
  >>>
  parameter_meta {
    input_dot_fast_a: ""
    parameter_file: ""
  }
}