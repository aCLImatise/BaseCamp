version 1.0

task GetOrthologListInput xmfaBackbone seq fileReference genomeCDS alignment base name {
  input {
    String? cdsCdsOrthologFilename
    String? cdsCdsAlignmentBasename
  }
  command <<<
    getOrthologList input xmfa backbone seq file reference genome CDS alignment base name \
      ~{cdsCdsOrthologFilename} \
      ~{cdsCdsAlignmentBasename}
  >>>
}