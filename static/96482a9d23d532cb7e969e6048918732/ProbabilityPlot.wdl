version 1.0

task ProbabilityPlot {
  input {
    String input_file
    String output_file
  }
  command <<<
    ProbabilityPlot \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    input_file: ""
    output_file: ""
  }
}