version 1.0

task CountMedian.py {
  input {
    Boolean infoInfo
    Boolean forceForce
    String? inputInputCountGraphFilename
    String? inputInputSequenceFilename
    String? outputOutputSummaryFilename
  }
  command <<<
    count-median.py \
      ~{inputInputCountGraphFilename} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--force" false="" forceForce} \
      ~{inputInputSequenceFilename} \
      ~{outputOutputSummaryFilename}
  >>>
}