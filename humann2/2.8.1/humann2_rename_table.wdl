version 1.0

task Humann2RenameTable {
  input {
    String inputInput
    String namesNames
    String customCustom
    Boolean simplifySimplify
    String outputOutput
  }
  command <<<
    humann2_rename_table \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(customCustom) then ("--custom " +  '"' + customCustom + '"') else ""} \
      ~{true="--simplify" false="" simplifySimplify} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}