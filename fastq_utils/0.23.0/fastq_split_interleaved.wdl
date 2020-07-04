version 1.0

task FastqSplitInterleaved {
  input {
    Int interleaved_fast_q
    String out_prefix
  }
  command <<<
    fastq_split_interleaved \
      ~{interleaved_fast_q} \
      ~{out_prefix}
  >>>
  parameter_meta {
    interleaved_fast_q: ""
    out_prefix: ""
  }
}