version 1.0

task ReadSeqToFastq {
  input {
    String to_fast_q
    String seq_file
    String? qual_file
  }
  command <<<
    ReadSeq to-fastq \
      ~{to_fast_q} \
      ~{seq_file} \
      ~{qual_file}
  >>>
  parameter_meta {
    to_fast_q: ""
    seq_file: ""
    qual_file: ""
  }
}