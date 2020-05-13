version 1.0

task ConvertSamToCA {
  input {
    String? samSamFile
    String? eidEidToIidMapping
    String? iidIid
    String? toTo
    Int? lengthLength
    String? mappingMapping
  }
  command <<<
    convertSamToCA \
      ~{samSamFile} \
      ~{eidEidToIidMapping} \
      ~{iidIid} \
      ~{toTo} \
      ~{lengthLength} \
      ~{mappingMapping}
  >>>
}