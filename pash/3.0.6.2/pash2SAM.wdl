version 1.0

task Pash2SAM {
  input {
    Boolean pashPashMappings
    Boolean fastFastQFile
    Boolean referencesReferencesEquNces
    Boolean bisulfiteBisulfiteSeqFlag
    Boolean samSamFile
    Boolean sampleSample
    Boolean centerCenter
  }
  command <<<
    pash2SAM \
      ~{true="--pashMappings" false="" pashPashMappings} \
      ~{true="--fastqFile" false="" fastFastQFile} \
      ~{true="--referenceSequnces" false="" referencesReferencesEquNces} \
      ~{true="--bisulfiteSeqFlag" false="" bisulfiteBisulfiteSeqFlag} \
      ~{true="--SAMFile" false="" samSamFile} \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--center" false="" centerCenter}
  >>>
}