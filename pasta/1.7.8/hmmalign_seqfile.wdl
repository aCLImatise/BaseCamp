version 1.0

task HmmalignSeqfile {
  input {
    Boolean? options
    String hmm_align
    String hmm_file
    String seq_file
  }
  command <<<
    hmmalign seqfile \
      ~{hmm_align} \
      ~{hmm_file} \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    hmm_align: ""
    hmm_file: ""
    seq_file: ""
  }
}