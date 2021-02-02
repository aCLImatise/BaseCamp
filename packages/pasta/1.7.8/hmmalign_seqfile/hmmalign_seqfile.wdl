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
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    hmm_align: ""
    hmm_file: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}