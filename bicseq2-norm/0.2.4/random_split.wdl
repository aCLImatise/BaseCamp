version 1.0

task RandomSplit {
  input {
    String probability_that_line_goes_to_output_file
  }
  command <<<
    random_split \
      ~{probability_that_line_goes_to_output_file}
  >>>
  parameter_meta {
    probability_that_line_goes_to_output_file: ""
  }
}