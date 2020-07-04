version 1.0

task Lastdb8 {
  input {
    String output_name
    String fast_a_sequence_file
  }
  command <<<
    lastdb8 \
      ~{output_name} \
      ~{fast_a_sequence_file}
  >>>
  parameter_meta {
    output_name: ""
    fast_a_sequence_file: ""
  }
}