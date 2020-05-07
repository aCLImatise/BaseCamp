version 1.0

task PhyluceUtilitiesCombineReads {
  input {
    String configConfig
    String outputOutput
    String subfolderSubfolder
  }
  command <<<
    phyluce_utilities_combine_reads \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(subfolderSubfolder) then ("--subfolder " +  '"' + subfolderSubfolder + '"') else ""}
  >>>
}