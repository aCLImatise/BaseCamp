version 1.0

task Hmmstat {
  input {
    Boolean? options
    String hmm_file
  }
  command <<<
    hmmstat \
      ~{hmm_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    hmm_file: ""
  }
}