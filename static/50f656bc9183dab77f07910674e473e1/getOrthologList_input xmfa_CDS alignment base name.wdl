version 1.0

task GetOrthologListInput xmfaCDS alignment base name {
  input {
    String? backboneBackboneSeqFile
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList input xmfa CDS alignment base name \
      ~{backboneBackboneSeqFile} \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}