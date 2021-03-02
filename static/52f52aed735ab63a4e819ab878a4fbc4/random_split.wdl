version 1.0

task RandomSplit {
  input {
    File probability_that_line_goes_to_output_file
  }
  command <<<
    random_split \
      ~{probability_that_line_goes_to_output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    probability_that_line_goes_to_output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_probability_that_line_goes_to_output_file = "${in_probability_that_line_goes_to_output_file}"
  }
}