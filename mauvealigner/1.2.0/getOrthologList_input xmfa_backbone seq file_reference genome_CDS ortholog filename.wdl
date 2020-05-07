version 1.0

task GetOrthologListInput xmfaBackbone seq fileReference genomeCDS ortholog filename {
  input {
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList input xmfa backbone seq file reference genome CDS ortholog filename \
      ~{cdsCdsAlignmentBasename}
  >>>
}