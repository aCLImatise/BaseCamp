version 1.0

task FastqSplitInterleavedInterleavedFastq {
  input {
    String? outOutPrefix
  }
  command <<<
    fastq_split_interleaved interleaved_fastq \
      ~{outOutPrefix}
  >>>
}