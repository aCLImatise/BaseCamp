version 1.0

task GetOrthologListBackbone seq file {
  input {
    String? inputInputXMfa
    String? backboneBackboneSeqFile
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList backbone seq file \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}