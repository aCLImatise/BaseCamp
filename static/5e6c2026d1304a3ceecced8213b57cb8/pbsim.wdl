version 1.0

task Pbsim {
  input {
    Boolean prefixPrefix
    Boolean dataDataType
    Boolean depthDepth
    Boolean lengthLengthMin
    Boolean lengthLengthMax
    Boolean accuracyAccuracyMin
    Boolean accuracyAccuracyMax
    Boolean differenceDifferenceRatio
    Boolean seedSeed
    Boolean sampleSampleFastQ
    Boolean sampleSampleProfileId
    Boolean modelModelQc
    Boolean lengthLengthMean
    Boolean lengthLengthSd
    Boolean accuracyAccuracyMean
    Boolean accuracyAccuracySd
  }
  command <<<
    pbsim \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--data-type" false="" dataDataType} \
      ~{true="--depth" false="" depthDepth} \
      ~{true="--length-min" false="" lengthLengthMin} \
      ~{true="--length-max" false="" lengthLengthMax} \
      ~{true="--accuracy-min" false="" accuracyAccuracyMin} \
      ~{true="--accuracy-max" false="" accuracyAccuracyMax} \
      ~{true="--difference-ratio" false="" differenceDifferenceRatio} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--sample-fastq" false="" sampleSampleFastQ} \
      ~{true="--sample-profile-id" false="" sampleSampleProfileId} \
      ~{true="--model_qc" false="" modelModelQc} \
      ~{true="--length-mean" false="" lengthLengthMean} \
      ~{true="--length-sd" false="" lengthLengthSd} \
      ~{true="--accuracy-mean" false="" accuracyAccuracyMean} \
      ~{true="--accuracy-sd" false="" accuracyAccuracySd}
  >>>
}