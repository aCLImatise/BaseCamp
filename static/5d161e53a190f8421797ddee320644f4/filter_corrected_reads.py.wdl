version 1.0

task FilterCorrectedReadspy {
  input {
    String coverage_threshold
    String input_filename
  }
  command <<<
    filter_corrected_reads_py \
      ~{coverage_threshold} \
      ~{input_filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coverage_threshold: ""
    input_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}