version 1.0

task Scorer {
  input {
    String predicted_ct
    String accepted_ct
    String output_file
  }
  command <<<
    scorer \
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