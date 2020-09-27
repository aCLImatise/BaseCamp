version 1.0

task ReadSeqTofastq {
  input {
    String to_fast_q
    String seq_file
    String? qual_file
  }
  command <<<
    ReadSeq to_fastq \
      ~{to_fast_q} \
      ~{seq_file} \
      ~{qual_file}
  >>>
  parameter_meta {
    to_fast_q: ""
    seq_file: ""
    qual_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}