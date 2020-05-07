version 1.0

task PhyluceGenetreesReformatTrees {
  input {
    String inputInput
    String outputOutput
    String inputInputFormat
    String outputOutputFormat
    String doDoNotPreserveSpaces
  }
  command <<<
    phyluce_genetrees_reformat_trees \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(doDoNotPreserveSpaces) then ("--do-not-preserve-spaces " +  '"' + doDoNotPreserveSpaces + '"') else ""}
  >>>
}