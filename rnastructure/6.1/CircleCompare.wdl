version 1.0

task CircleCompare {
  input {
    String predicted_ct
    String accepted_ct
    String output_file
  }
  command <<<
    CircleCompare \
      ~{predicted_ct} \
      ~{accepted_ct} \
      ~{output_file}
  >>>
  parameter_meta {
    predicted_ct: ""
    accepted_ct: ""
    output_file: ""
  }
}