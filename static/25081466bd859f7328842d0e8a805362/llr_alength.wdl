version 1.0

task LlrAlength {
  input {
    String freq_file
  }
  command <<<
    llr alength \
      ~{freq_file}
  >>>
  parameter_meta {
    freq_file: ""
  }
}