version 1.0

task AbundanceDistSingle.py {
  input {
    String? inputInputSequenceFilename
    String? outputOutputHistogramFilename
  }
  command <<<
    abundance-dist-single.py \
      ~{inputInputSequenceFilename} \
      ~{outputOutputHistogramFilename}
  >>>
}