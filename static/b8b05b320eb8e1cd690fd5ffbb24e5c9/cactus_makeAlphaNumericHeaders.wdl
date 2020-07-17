version 1.0

task CactusMakeAlphaNumericHeaders.py {
  input {
    String fast_a_input_file
    String fast_a_output_file
  }
  command <<<
    cactus_makeAlphaNumericHeaders.py \
      ~{fast_a_input_file} \
      ~{fast_a_output_file}
  >>>
  parameter_meta {
    fast_a_input_file: ""
    fast_a_output_file: ""
  }
}