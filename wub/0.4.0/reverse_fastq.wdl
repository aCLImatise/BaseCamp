version 1.0

task ReverseFastq.pyOutputFastq {
  input {
    String? inputInputFastQ
    String? outputOutputFastQ
  }
  command <<<
    reverse_fastq.py output_fastq \
      ~{inputInputFastQ} \
      ~{outputOutputFastQ}
  >>>
}