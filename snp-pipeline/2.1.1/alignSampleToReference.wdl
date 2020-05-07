version 1.0

task AlignSampleToReference.sh {
  input {
    Boolean forceForce
    Boolean vV
    Int threadsThreads
    String? referenceReferenceFile
    String? sampleSampleFastqfile1
    String? sampleSampleFastqfile2
  }
  command <<<
    alignSampleToReference.sh \
      ~{referenceReferenceFile} \
      ~{true="--force" false="" forceForce} \
      ~{true="-v" false="" vV} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{sampleSampleFastqfile1} \
      ~{sampleSampleFastqfile2}
  >>>
}