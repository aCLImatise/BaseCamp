version 1.0

task PhyluceGenetreesRenameTreeLeaves {
  input {
    String inputInput
    String configConfig
    String outputOutput
    String sectionSection
    Boolean orderOrder
    String inputInputFormat
    String outputOutputFormat
    String reReRoot
    String doDoNotPreserveSpaces
  }
  command <<<
    phyluce_genetrees_rename_tree_leaves \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{true="--order" false="" orderOrder} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(reReRoot) then ("--reroot " +  '"' + reReRoot + '"') else ""} \
      ~{if defined(doDoNotPreserveSpaces) then ("--do-not-preserve-spaces " +  '"' + doDoNotPreserveSpaces + '"') else ""}
  >>>
}