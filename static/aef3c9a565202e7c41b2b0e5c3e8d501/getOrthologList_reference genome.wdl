version 1.0

task GetOrthologListReference genome {
  input {
    String? inputInputXMfa
    String? backboneBackboneSeqFile
    String? referenceReferenceGenome
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList reference genome \
      ~{inputInputXMfa} \
      ~{backboneBackboneSeqFile} \
      ~{referenceReferenceGenome} \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}