version 1.0

task GetOrthologListInput xmfaBackbone seq fileCDS alignment base name {
  input {
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList input xmfa backbone seq file CDS alignment base name \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}