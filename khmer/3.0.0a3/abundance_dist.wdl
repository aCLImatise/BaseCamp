version 1.0

task AbundanceDist.py {
  input {
    String? inputInputCountGraphFilename
    String? inputInputSequenceFilename
    String? outputOutputHistogramFilename
  }
  command <<<
    abundance-dist.py \
      ~{inputInputCountGraphFilename} \
      ~{inputInputSequenceFilename} \
      ~{outputOutputHistogramFilename}
  >>>
}