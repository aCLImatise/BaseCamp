version 1.0

task FastqSplitInterleavedOutPrefix {
  input {
    Int? interleavedInterleavedFastQ
    String? outOutPrefix
  }
  command <<<
    fastq_split_interleaved out_prefix \
      ~{interleavedInterleavedFastQ} \
      ~{outOutPrefix}
  >>>
}