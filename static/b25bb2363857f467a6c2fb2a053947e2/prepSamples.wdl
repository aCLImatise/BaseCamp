version 1.0

task PrepSamples.sh {
  input {
    Boolean forceForce
    Boolean vV
    String? referenceReferenceFile
    String? sampleSampleDir
  }
  command <<<
    prepSamples.sh \
      ~{referenceReferenceFile} \
      ~{true="--force" false="" forceForce} \
      ~{true="-v" false="" vV} \
      ~{sampleSampleDir}
  >>>
}