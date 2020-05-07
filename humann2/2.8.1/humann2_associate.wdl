version 1.0

task Humann2Associate {
  input {
    File inputInput
    String focalFocalMetaDatum
    String lastLastMetaDatum
    String focalFocalType
    File outputOutput
    Float fdrFdr
  }
  command <<<
    humann2_associate \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(focalFocalMetaDatum) then ("--focal-metadatum " +  '"' + focalFocalMetaDatum + '"') else ""} \
      ~{if defined(lastLastMetaDatum) then ("--last-metadatum " +  '"' + lastLastMetaDatum + '"') else ""} \
      ~{if defined(focalFocalType) then ("--focal-type " +  '"' + focalFocalType + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""}
  >>>
}