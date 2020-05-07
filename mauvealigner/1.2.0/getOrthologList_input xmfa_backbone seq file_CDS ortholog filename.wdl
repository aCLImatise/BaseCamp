version 1.0

task GetOrthologListInput xmfaBackbone seq fileCDS ortholog filename {
  input {
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList input xmfa backbone seq file CDS ortholog filename \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}