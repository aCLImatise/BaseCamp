version 1.0

task TiptoftInputFastq {
  input {
    String? inputInputFastQ
  }
  command <<<
    tiptoft input_fastq \
      ~{inputInputFastQ}
  >>>
}