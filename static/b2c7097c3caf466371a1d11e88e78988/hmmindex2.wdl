version 1.0

task Hmmindex2 {
  input {
    Boolean? options
    String hmm_index
    String hmm_file
  }
  command <<<
    hmmindex2 \
      ~{hmm_index} \
      ~{hmm_file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    hmm_index: ""
    hmm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}