version 1.0

task Shark {
  input {
    Boolean out1Out1
    Boolean out2Out2
    Boolean kmKmErSize
    Boolean confidenceConfidence
    Boolean bfBfSize
    Boolean minMinBaseQuality
    Boolean singleSingle
    Boolean threadsThreads
    Boolean verboseVerbose
  }
  command <<<
    shark \
      ~{true="--out1" false="" out1Out1} \
      ~{true="--out2" false="" out2Out2} \
      ~{true="--kmer-size" false="" kmKmErSize} \
      ~{true="--confidence" false="" confidenceConfidence} \
      ~{true="--bf-size" false="" bfBfSize} \
      ~{true="--min-base-quality" false="" minMinBaseQuality} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}