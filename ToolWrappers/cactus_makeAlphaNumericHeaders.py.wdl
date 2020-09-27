version 1.0

task CactusMakeAlphaNumericHeaderspy {
  input {
    File fast_a_input_file
    File fast_a_output_file
  }
  command <<<
    cactus_makeAlphaNumericHeaders_py \
      ~{fast_a_input_file} \
      ~{fast_a_output_file}
  >>>
  parameter_meta {
    fast_a_input_file: ""
    fast_a_output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_fast_a_output_file = "${in_fast_a_output_file}"
  }
}