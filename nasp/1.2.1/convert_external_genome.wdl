version 1.0

task ConvertExternalGenome {
  input {
    String nucNucMeRpath
    String nucNucMerArgs
    String deltaDeltaFilterPath
    String deltaDeltaFilterArgs
    String referenceReference
    String externalExternal
    String nameName
  }
  command <<<
    convert_external_genome \
      ~{if defined(nucNucMeRpath) then ("--nucmerpath " +  '"' + nucNucMeRpath + '"') else ""} \
      ~{if defined(nucNucMerArgs) then ("--nucmerargs " +  '"' + nucNucMerArgs + '"') else ""} \
      ~{if defined(deltaDeltaFilterPath) then ("--deltafilterpath " +  '"' + deltaDeltaFilterPath + '"') else ""} \
      ~{if defined(deltaDeltaFilterArgs) then ("--deltafilterargs " +  '"' + deltaDeltaFilterArgs + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(externalExternal) then ("--external " +  '"' + externalExternal + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""}
  >>>
}