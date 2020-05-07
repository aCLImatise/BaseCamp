version 1.0

task GetOrthologListCDS ortholog filename {
  input {
    String? inputInputXMfa
    String? backboneBackboneSeqFile
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList CDS ortholog filename \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}