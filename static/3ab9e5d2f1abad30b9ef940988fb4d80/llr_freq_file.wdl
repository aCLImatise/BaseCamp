version 1.0

task LlrFreqFile {
  input {
    String llr
    String a_length
    String freq_file
  }
  command <<<
    llr freq_file \
      ~{llr} \
      ~{a_length} \
      ~{freq_file}
  >>>
  parameter_meta {
    llr: ""
    a_length: ""
    freq_file: ""
  }
}