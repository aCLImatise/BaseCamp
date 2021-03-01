version 1.0

task HmmeralignSeqfile {
  input {
    Boolean? options
    String hmmer_align
    String hmm_file
    String seq_file
  }
  command <<<
    hmmeralign seqfile \
      ~{hmmer_align} \
      ~{hmm_file} \
      ~{seq_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    hmmer_align: ""
    hmm_file: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}