version 1.0

task DrDiscoLogoSequence {
  input {
    String region
    String fast_a_input_file
  }
  command <<<
    dr-disco logo-sequence \
      ~{region} \
      ~{fast_a_input_file}
  >>>
  parameter_meta {
    region: ""
    fast_a_input_file: ""
  }
}