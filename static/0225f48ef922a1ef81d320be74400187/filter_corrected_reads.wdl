version 1.0

task FilterCorrectedReads.py {
  input {
    String coverage_threshold
    String input_filename
  }
  command <<<
    filter_corrected_reads.py \
      ~{coverage_threshold} \
      ~{input_filename}
  >>>
  parameter_meta {
    coverage_threshold: ""
    input_filename: ""
  }
}