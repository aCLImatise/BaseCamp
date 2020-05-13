version 1.0

task GetOrthologListCDS alignment base name {
  input {
    String? inputInputXMfa
    String? backboneBackboneSeqFile
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList CDS alignment base name \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}